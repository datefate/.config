#!/bin/bash

# 获取当前默认的音频输出设备
CURRENT_SINK=$(pactl get-default-sink)

# 获取所有可用的音频输出设备及其描述
AVAILABLE_SINKS=$(pactl list short sinks)

# 获取设备名称列表
SINK_NAMES=($(echo "$AVAILABLE_SINKS" | awk '{print $2}'))

# 查找当前设备的索引
CURRENT_INDEX=-1
for i in "${!SINK_NAMES[@]}"; do
    if [ "${SINK_NAMES[$i]}" = "$CURRENT_SINK" ]; then
        CURRENT_INDEX=$i
        break
    fi
done

# 计算下一个设备的索引
NEXT_INDEX=$(( (CURRENT_INDEX + 1) % ${#SINK_NAMES[@]} ))

# 设置为下一个音频输出设备
NEXT_SINK=${SINK_NAMES[$NEXT_INDEX]}
pactl set-default-sink "$NEXT_SINK"

# 发送通知
notify-send "Audio Output" "Switched to $(pactl list sinks | grep -A 10 "$NEXT_SINK" | grep Description | awk -F': ' '{print $2}')"

# Debug 输出
echo "Current Sink: $CURRENT_SINK"
echo "Next Sink: $NEXT_SINK"
