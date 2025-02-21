#pragma once

#include "../../Graphics/Devices/lve_device.hpp"
#include "../../Graphics/Pipeline/lve_pipeline.hpp"
#include "../../Objects/lve_game_object.hpp"
#include "../lve_camera.hpp"

// std
#include <memory>
#include <vector>

namespace lve {
class SimpleRenderSystem {
 public:
  SimpleRenderSystem(LveDevice &device, VkRenderPass renderPass);
  ~SimpleRenderSystem();

  SimpleRenderSystem(const SimpleRenderSystem &) = delete;
  SimpleRenderSystem &operator=(const SimpleRenderSystem &) = delete;

  void renderGameObjects(
      VkCommandBuffer commandBuffer,
      std::vector<LveGameObject> &gameObjects,
      const LveCamera &camera);

 private:
  void createPipelineLayout();
  void createPipeline(VkRenderPass renderPass);

  LveDevice &lveDevice;

  std::unique_ptr<LvePipeline> lvePipeline;
  VkPipelineLayout pipelineLayout;
};
}  // namespace lve
