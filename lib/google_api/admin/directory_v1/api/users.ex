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

defmodule GoogleApi.Admin.Directory_v1.Api.Users do
  @moduledoc """
  API calls for all endpoints tagged `Users`.
  """

  alias GoogleApi.Admin.Directory_v1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieves a users profile and any custom fields

  ## Parameters

  - connection (GoogleApi.Admin.Directory_v1.Connection): Connection to server
  - userKey (String.t): The users email to get
  - optional_params (KeywordList): [optional] Optional parameters
    - :projection (String.t): The projection to cast on the query.
    - :customFieldMask (String.t): The mask of custom fields to request on the query.

  ## Returns

  {:ok, %GoogleApi.Admin.Directory_v1.Model.User{}} on success
  {:error, info} on failure
  """
  @spec get_user(Tesla.Env.client(), String.t()) ::
          {:ok, GoogleApi.Admin.Directory_v1.Model.User.t()} | {:error, Tesla.Env.t()}
  def get_user(
        connection,
        userKey,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :projection => :query,
      :customFieldMask => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/users/{userKey}", %{
        "userKey" => URI.encode_www_form(userKey)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Admin.Directory_v1.Model.User{}])
  end
end
