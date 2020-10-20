defmodule Heimdallr.Accounts do
  alias Heimdallr.{Accounts, Repo}

  def find_user(id) do
    Repo.get(Accounts.User, id)
  end

  def list_users do
    Repo.all(Accounts.User)
  end

  def create_user(attrs) do
    attrs
    |> Accounts.User.changeset()
    |> Repo.insert()
  end

  # defp do_create_user(attrs) do
  #   attrs
  #   |> Accounts.User.changeset()
  #   |> Repo.insert()
  # end

  # def create_user(attrs) do
  #   {contact_attrs, user_attrs} = Map.pop(attrs, :contact)

  #   Repo.transaction(fn ->
  #     with {:ok, contact} <- create_contact(contact_attrs),
  #          {:ok, user} <- do_create_user(user_attrs, contact) do
  #       %{user | contacts: [contact]}
  #     end
  #   end)
  # end

  # def create_contact(attrs) do
  #   attrs
  #   |> Accounts.Contact.changeset()
  #   |> Blog.Repo.insert()
  # end

  # defp do_create_user(attrs, contact) do
  #   attrs
  #   |> Map.put(:contact_id, contact.id)
  #   |> Accounts.User.changeset()
  #   |> Blog.Repo.insert()
  # end
end
