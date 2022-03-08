export const idlFactory = ({ IDL }) => {
  return IDL.Service({ 'add2' : IDL.Func([IDL.Nat, IDL.Nat], [IDL.Nat], []) });
};
export const init = ({ IDL }) => { return []; };
