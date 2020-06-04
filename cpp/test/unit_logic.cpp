#include <gtest/gtest.h>
#include <memory>

#include "logic.h"

class Fixture : public ::testing::Test {

protected:
  virtual void SetUp() override {}
  virtual void TearDown() override {}

  Logic sut_;
};

TEST_F(Fixture, StateInactive_whenInitialization) {
  auto expected_meaning_of_life = 42;

  auto actual_meaning_of_life = sut_.GetAnswerToLife();

  EXPECT_EQ(actual_meaning_of_life, expected_meaning_of_life);
}
