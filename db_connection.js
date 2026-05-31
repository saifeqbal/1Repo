// SQL Database Connection Configuration
// This file handles connections to the SQL databases defined in table.sql

const mysql = require('mysql2/promise');

// Connection pool configuration
const pool = mysql.createPool({
  host: process.env.DB_HOST || 'localhost',
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || '',
  database: process.env.DB_NAME || 'tablen',
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0
});

// Function to get a connection from the pool
async function getConnection() {
  try {
    const connection = await pool.getConnection();
    console.log('Database connected successfully');
    return connection;
  } catch (error) {
    console.error('Error connecting to database:', error.message);
    throw error;
  }
}

// Function to execute queries
async function executeQuery(query, params = []) {
  let connection;
  try {
    connection = await getConnection();
    const [results] = await connection.execute(query, params);
    return results;
  } catch (error) {
    console.error('Query execution error:', error.message);
    throw error;
  } finally {
    if (connection) {
      await connection.release();
    }
  }
}

// Function to initialize database and tables
async function initializeDatabase() {
  try {
    console.log('Initializing database...');
    
    // Create database if not exists
    await executeQuery('CREATE DATABASE IF NOT EXISTS tablen');
    await executeQuery('CREATE DATABASE IF NOT EXISTS character_data');
    
    console.log('Databases initialized successfully');
  } catch (error) {
    console.error('Database initialization error:', error.message);
  }
}

module.exports = {
  pool,
  getConnection,
  executeQuery,
  initializeDatabase
};
