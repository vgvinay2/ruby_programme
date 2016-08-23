run_locally do
  within '/tmp' do
    puts capture(:ls)
  end
end
