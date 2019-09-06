-- Copyright 2019 The Nomulus Authors. All Rights Reserved.
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

CREATE TABLE "PremiumList" (
  revision_id BIGSERIAL NOT NULL,
  creation_timestamp TIMESTAMPTZ NOT NULL,
  currency TEXT NOT NULL,
  PRIMARY KEY (revision_id)
);

CREATE TABLE "PremiumEntry" (
  revision_id BIGSERIAL NOT NULL,
  price NUMERIC(12, 2) NOT NULL,
  domain_label TEXT NOT NULL,
  primary key (revision_id, domain_label),
  FOREIGN KEY (revision_id) REFERENCES "PremiumList"(revision_id)
);