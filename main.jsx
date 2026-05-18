import React, { useState } from 'react';

// Navigation Buttons Component
const NavigationButtons = () => {
  return (
    <div className="flex items-center space-x-4">
      <button className="font-semibold text-sm hover:bg-gray-100 px-3 py-2 rounded transition">
        Airbnb your home
      </button>
      <i className="fas fa-globe cursor-pointer hover:text-gray-700"></i>
      <div className="flex border rounded-full p-2 space-x-2 hover:shadow-md cursor-pointer">
        <i className="animate-bounce fas fa-bars"></i>
        <i className="fas fa-user-circle text-gray-500 text-xl"></i>
      </div>
    </div>
  );
};

// Search Bar Buttons Component
const SearchBarButtons = () => {
  const [searchQuery, setSearchQuery] = useState('');

  const handleSearch = (e) => {
    e.preventDefault();
    console.log('Search query:', searchQuery);
  };

  return (
    <form className="flex border rounded-full py-2 px-4 shadow-sm hover:shadow-md cursor-pointer transition" onSubmit={handleSearch}>
      <button type="button" className="px-4 font-semibold border-r hover:bg-gray-50">
        Anywhere
      </button>
      <button type="button" className="px-4 font-semibold border-r hover:bg-gray-50">
        Any week
      </button>
      <button type="button" className="px-4 text-gray-500 hover:bg-gray-50">
        Add guests
      </button>
      <button type="submit" className="bg-rose-500 text-white p-2 rounded-full ml-2 hover:bg-rose-600">
        <i className="fas fa-search"></i>
      </button>
    </form>
  );
};

// Category Filter Buttons Component
const CategoryFilterButtons = () => {
  const [activeCategory, setActiveCategory] = useState(null);

  const categories = [
    { id: 1, icon: 'fas fa-umbrella-beach', label: 'Amazing pools' },
    { id: 2, icon: 'fas fa-mountain', label: 'Views' },
    { id: 3, icon: 'fas fa-fire', label: 'Trending' },
    { id: 4, icon: 'fas fa-snowflake', label: 'Arctic' },
  ];

  return (
    <div className="flex justify-center space-x-12 py-6 border-b bg-white overflow-x-auto px-4">
      {categories.map((category) => (
        <button
          key={category.id}
          onClick={() => setActiveCategory(category.id)}
          className={`text-center cursor-pointer border-b-2 pb-2 transition ${
            activeCategory === category.id
              ? 'text-black border-black'
              : 'text-gray-500 hover:text-black border-transparent hover:border-black'
          }`}
        >
          <i className={`${category.icon} text-2xl animate-bounce`}></i>
          <p className="text-xs mt-1">{category.label}</p>
        </button>
      ))}
    </div>
  );
};

// Search Input Component
const SearchInput = () => {
  const [searchValue, setSearchValue] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log('Search submitted:', searchValue);
  };

  return (
    <form className="flex justify-center my-6" onSubmit={handleSubmit}>
      <div className="flex justify-center items-center border-2 border-gray-300 rounded-full px-4 py-2 w-80">
        <input
          type="text"
          placeholder="Start your search"
          value={searchValue}
          onChange={(e) => setSearchValue(e.target.value)}
          className="border-none outline-none flex-grow px-2 text-center rounded-full"
        />
        <button type="submit" className="bg-none border-none cursor-pointer ml-2 text-xl">
          🔍
        </button>
      </div>
    </form>
  );
};

// Main Component combining all buttons
export default function MainButtons() {
  return (
    <div>
      {/* Top Navigation Buttons */}
      <nav className="flex justify-between items-center border-b sticky top-0 bg-white z-50 px-10 py-4">
        <div className="text-rose-500 text-3xl font-bold">
          <i className="animate-bounce fab fa-airbnb"></i>
          <span className="hidden md:inline ml-2">airbnb</span>
        </div>
        <SearchBarButtons />
        <NavigationButtons />
      </nav>

      {/* Search Input Component */}
      <SearchInput />

      {/* Category Filter Buttons */}
      <CategoryFilterButtons />
    </div>
  );
}