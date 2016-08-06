(*
  Copyright 2015, MARS - REST Library

  Home: https://github.com/MARS-library

  ### ### ### ###
  MARS-Curiosity edition
  Home: https://github.com/andrea-magni/MARS

*)
unit MARS.Core.Exceptions;

interface

uses
  SysUtils;

type
  EMARSException = class(Exception);

  EMARSHttpException = class(EMARSException)
  private
    FStatus: Integer;
  public
    constructor Create(const AMessage: string; AStatus: Integer = 500); virtual;

    property Status: Integer read FStatus write FStatus;
  end;

implementation

{ EMARSHttpException }

constructor EMARSHttpException.Create(const AMessage: string; AStatus: Integer);
begin
  inherited Create(AMessage);
  FStatus := AStatus;
end;

end.
