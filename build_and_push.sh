#!/usr/bin/env bash
set -euo pipefail

IMAGE="gueraf/perftest"
TAG="${1:-latest}"

echo "Building ${IMAGE}:${TAG}"
docker build -t "${IMAGE}:${TAG}" .

echo "Pushing ${IMAGE}:${TAG}"
docker push "${IMAGE}:${TAG}"
