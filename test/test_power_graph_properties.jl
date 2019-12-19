
# The object test is from set_up_simple_test_system.jl
@testset "Get network properties from the graph" begin
    @test get_bus_data(test, 1)["bus_type"] == 3 # Check if the bus is the swing bus
    @test get_branch_data(test, 1, 2)["br_x"] == 1 # Check if the branch reactance is correct
    @test is_load_bus(test, 4) # Check if the bus is a load bus
    @test is_gen_bus(test, 1) # Check if the bus is a load bus
end

