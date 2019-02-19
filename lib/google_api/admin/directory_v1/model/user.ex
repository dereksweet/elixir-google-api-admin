# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule GoogleApi.Admin.Directory_v1.Model.User do
  @moduledoc """
  JSON template for the activity resource.

  ## Attributes

  - id (String.t):  Unique ID for the user.
  - customSchemas (NotSureYet): The custom Schemas for the user as request in CustomFieldMask
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
               :id => any(),
               :customSchemas => any()
             }

  field(:id)
  field(:customSchemas)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.User do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.User.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.User do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
