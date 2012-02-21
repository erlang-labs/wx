%%
%% %CopyrightBegin%
%%
%% Copyright Ericsson AB 2008-2012. All Rights Reserved.
%%
%% The contents of this file are subject to the Erlang Public License,
%% Version 1.1, (the "License"); you may not use this file except in
%% compliance with the License. You should have received a copy of the
%% Erlang Public License along with this software. If not, it can be
%% retrieved online at http://www.erlang.org/.
%%
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and limitations
%% under the License.
%%
%% %CopyrightEnd%
%% This file is generated DO NOT EDIT

%% @doc See external documentation: <a href="http://www.wxwidgets.org/manuals/stable/wx_wxsystemoptions.html">wxSystemOptions</a>.
%% @type wxSystemOptions().  An object reference, The representation is internal
%% and can be changed without notice. It can't be used for comparsion
%% stored on disc or distributed for use on other nodes.

-module(wxSystemOptions).
-include("wxe.hrl").
-export([getOption/1,getOptionInt/1,hasOption/1,isFalse/1,setOption/2]).

%% inherited exports
-export([parent_class/1]).

-export_type([wxSystemOptions/0]).
%% @hidden
parent_class(_Class) -> erlang:error({badtype, ?MODULE}).

-type wxSystemOptions() :: wx:wx_object().
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxsystemoptions.html#wxsystemoptionsgetoption">external documentation</a>.
-spec getOption(Name) -> unicode:charlist() when
	Name::unicode:chardata().
getOption(Name)
 when is_list(Name) ->
  Name_UC = unicode:characters_to_binary([Name,0]),
  wxe_util:call(?wxSystemOptions_GetOption,
  <<(byte_size(Name_UC)):32/?UI,(Name_UC)/binary, 0:(((8- ((4+byte_size(Name_UC)) band 16#7)) band 16#7))/unit:8>>).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxsystemoptions.html#wxsystemoptionsgetoptionint">external documentation</a>.
-spec getOptionInt(Name) -> integer() when
	Name::unicode:chardata().
getOptionInt(Name)
 when is_list(Name) ->
  Name_UC = unicode:characters_to_binary([Name,0]),
  wxe_util:call(?wxSystemOptions_GetOptionInt,
  <<(byte_size(Name_UC)):32/?UI,(Name_UC)/binary, 0:(((8- ((4+byte_size(Name_UC)) band 16#7)) band 16#7))/unit:8>>).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxsystemoptions.html#wxsystemoptionshasoption">external documentation</a>.
-spec hasOption(Name) -> boolean() when
	Name::unicode:chardata().
hasOption(Name)
 when is_list(Name) ->
  Name_UC = unicode:characters_to_binary([Name,0]),
  wxe_util:call(?wxSystemOptions_HasOption,
  <<(byte_size(Name_UC)):32/?UI,(Name_UC)/binary, 0:(((8- ((4+byte_size(Name_UC)) band 16#7)) band 16#7))/unit:8>>).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxsystemoptions.html#wxsystemoptionsisfalse">external documentation</a>.
-spec isFalse(Name) -> boolean() when
	Name::unicode:chardata().
isFalse(Name)
 when is_list(Name) ->
  Name_UC = unicode:characters_to_binary([Name,0]),
  wxe_util:call(?wxSystemOptions_IsFalse,
  <<(byte_size(Name_UC)):32/?UI,(Name_UC)/binary, 0:(((8- ((4+byte_size(Name_UC)) band 16#7)) band 16#7))/unit:8>>).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxsystemoptions.html#wxsystemoptionssetoption">external documentation</a>.
-spec setOption(Name, Value) -> ok when
	Name::unicode:chardata(), Value::integer();
      (Name, Value) -> ok when
	Name::unicode:chardata(), Value::unicode:chardata().
setOption(Name,Value)
 when is_list(Name),is_integer(Value) ->
  Name_UC = unicode:characters_to_binary([Name,0]),
  wxe_util:cast(?wxSystemOptions_SetOption_2_0,
  <<(byte_size(Name_UC)):32/?UI,(Name_UC)/binary, 0:(((8- ((4+byte_size(Name_UC)) band 16#7)) band 16#7))/unit:8,Value:32/?UI>>);
setOption(Name,Value)
 when is_list(Name),is_list(Value) ->
  Name_UC = unicode:characters_to_binary([Name,0]),
  Value_UC = unicode:characters_to_binary([Value,0]),
  wxe_util:cast(?wxSystemOptions_SetOption_2_1,
  <<(byte_size(Name_UC)):32/?UI,(Name_UC)/binary, 0:(((8- ((4+byte_size(Name_UC)) band 16#7)) band 16#7))/unit:8,(byte_size(Value_UC)):32/?UI,(Value_UC)/binary, 0:(((8- ((4+byte_size(Value_UC)) band 16#7)) band 16#7))/unit:8>>).

