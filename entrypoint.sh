#!/bin/sh
set -e

mkdir egs_tmp_cloud_dir

/opt/Engine/Binaries/Linux/BuildPatchTool \
-OrganizationId="$ORGANIZATION_ID" \
-ProductId="$PRODUCT_ID" \
-ArtifactId="$ARTIFACT_ID" \
-ClientId="$CLIENT_ID" \
-ClientSecret="$CLIENT_SECRET" \
-mode=UploadBinary \
-BuildRoot="$BUILD_ROOT" \
-CloudDir="egs_tmp_cloud_dir/" \
-BuildVersion="$VERSION" \
-AppLaunch="$APP_LAUNCH" \
-AppArgs="$APP_ARGS"

/opt/Engine/Binaries/Linux/BuildPatchTool \
-OrganizationId="$ORGANIZATION_ID" \
-ProductId="$PRODUCT_ID" \
-ArtifactId="$ARTIFACT_ID" \
-ClientId="$CLIENT_ID" \
-ClientSecret="$CLIENT_SECRET" \
-mode=LabelBinary \
-BuildVersion="$VERSION" \
-Label="$LABEL" \
-Platform="$PLATFORM" \
-SandboxId="$SANDBOX_ID"