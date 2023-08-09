import React from "react";

function Balance() {
  
  async function handleClick() {
    console.log("Balance Button Clicked");
  }


  return (
    <div className="window white">
      <label>Check account token balance:</label>
      <p>
        <input
          id="balance-principal-id"
          type="text"
          placeholder="Enter a Principal ID"
        />
      </p>
      <p className="trade-buttons">
        <button
          id="btn-request-balance"
          onClick={handleClick}
        >
          Check Balance
        </button>
      </p>
      <p>This account has a balance of XYZ.</p>
    </div>
  );
}

export default Balance;
