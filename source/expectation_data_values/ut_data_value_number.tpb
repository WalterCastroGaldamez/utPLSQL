create or replace type body ut_data_value_number as

  constructor function ut_data_value_number(self in out nocopy ut_data_value_number, a_value number) return self as result is
  begin
    self.value := a_value;
    self.type := 'number';
    return;
  end;

  overriding member function is_null return boolean is
  begin
    return (self.value is null);
  end;

  overriding member function to_string return varchar2 is
  begin
    return ut_utils.to_string(self.value);
  end;

end;
/
