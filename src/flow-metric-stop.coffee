ReturnValue = require 'nanocyte-component-return-value'

class FlowMetricStop extends ReturnValue
  onEnvelope: (envelope) =>
    {config} = envelope

    devices: [config.deviceId]
    payload:
      userUuid: 'userUuid'
      deploymentUuid: config.deploymentUuid
      application: 'flow-runner'
      flowUuid: config.flowUuid
      workflow: 'flow-stop'
      state: 'end'

module.exports = FlowMetricStop
