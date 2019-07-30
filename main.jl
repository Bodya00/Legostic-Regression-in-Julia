using HDF5
function load_dataset()
    train = h5open("./dataset/train_catvnoncat.h5")
    test = h5open("./dataset/test_catvnoncat.h5")

    return read(train["train_set_x"]),
    read(train["train_set_y"]),
    read(test["test_set_x"]),
    read(test["test_set_y"])
end

train_x_orig, train_y_orig, test_x_orig, test_y_orig =  load_dataset()
train_x, train_y, test_x, test_y = train_x_orig, train_y_orig, test_x_orig, test_y_orig

@enum Classes cat=1 no_cat=0
m_train = size(train_x)[end]
m_test = size(test_x)[end]
num_px = prod(size(train_x)[end-1])


println("Number of training examples: m_train = $m_train")
println("Number of testing examples: m_test = $m_test")
println("Height/Width of each image: num_px = $num_px")
println("Each image is of size: ($num_px) ,($num_px), 3")
println("train_set_x shape: $(size(train_set_x_orig))"
println("train_set_y shape: " + str(train_set_y.shape))
println("test_set_x shape: " + str(test_set_x_orig.shape))
println("test_set_y shape: " + str(test_set_y.shape))
