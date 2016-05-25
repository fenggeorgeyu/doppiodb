-- This Source Code Form is subject to the terms of the Mozilla Public
-- License, v. 2.0.  If a copy of the MPL was not distributed with this
-- file, You can obtain one at http://mozilla.org/MPL/2.0/.
--
-- Copyright 1997 - July 2008 CWI, August 2008 - 2016 MonetDB B.V.

-- only system functions until now
create table systemfunctions (function_id)
	as (select id from functions) with data;
grant select on systemfunctions to public;

-- only system tables until now
update _tables set system = true;

-- only system schemas until now
update schemas set system = true;
