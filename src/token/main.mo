import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";
actor Token {
var owner : Principal = Principal.fromText("gbdev-tyqsv-hnvqv-7mgz4-4kcfl-wbv6x-6khez-y56gq-uohqs-quom");
var totalSupply : Nat = 1000000000;
var symbol : Text = "DANG";
var balances = HashMap.HashMap<Principal, Nat>(1, Principal.equal, Principal.hash);
balances.put(owner, totalSupply);

public query func balance0f (who: Principal): async Nat {
let balance : Nat = switch (balances.get (who)) {
case null 0;
case (?result) result;
};
return balance;
};

};