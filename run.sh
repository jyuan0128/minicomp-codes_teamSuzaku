#/bin/bash

set -euo pipefail

OUTPUT_DIR="eval_results"

TASK="gsm8k"
uv run lighteval vllm "config.yaml" "lighteval|$TASK|0|0" \
    --use-chat-template \
    --output-dir $OUTPUT_DIR/$TASK


TASK="aime24"
uv run lighteval vllm "config.yaml" "lighteval|$TASK|0|0" \
    --use-chat-template \
    --output-dir $OUTPUT_DIR/$TASK


TASK="gpqa:diamond"
uv run lighteval vllm "config.yaml" "lighteval|$TASK|0|0" \
    --use-chat-template \
    --output-dir $OUTPUT_DIR/$TASK