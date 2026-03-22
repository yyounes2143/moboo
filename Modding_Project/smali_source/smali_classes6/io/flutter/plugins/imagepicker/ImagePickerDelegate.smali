.class public Lio/flutter/plugins/imagepicker/ImagePickerDelegate;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;,
        Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;,
        Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;,
        Lio/flutter/plugins/imagepicker/ImagePickerDelegate$CameraDevice;,
        Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;,
        Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;
    }
.end annotation


# static fields
.field static final REQUEST_CAMERA_IMAGE_PERMISSION:I = 0x929
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final REQUEST_CAMERA_VIDEO_PERMISSION:I = 0x933
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final REQUEST_CODE_CHOOSE_IMAGE_FROM_GALLERY:I = 0x926
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final REQUEST_CODE_CHOOSE_MEDIA_FROM_GALLERY:I = 0x92b
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final REQUEST_CODE_CHOOSE_MULTI_IMAGE_FROM_GALLERY:I = 0x92a
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final REQUEST_CODE_CHOOSE_VIDEO_FROM_GALLERY:I = 0x930
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final REQUEST_CODE_TAKE_IMAGE_WITH_CAMERA:I = 0x927
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final REQUEST_CODE_TAKE_VIDEO_WITH_CAMERA:I = 0x931
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final activity:Landroid/app/Activity;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private cameraDevice:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$CameraDevice;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field final fileProviderName:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final fileUriResolver:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;

.field private final fileUtils:Lio/flutter/plugins/imagepicker/FileUtils;

.field private final imageResizer:Lio/flutter/plugins/imagepicker/ImageResizer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private pendingCallState:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final pendingCallStateLock:Ljava/lang/Object;

.field private pendingCameraMediaUri:Landroid/net/Uri;

.field private final permissionManager:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/flutter/plugins/imagepicker/ImageResizer;Lio/flutter/plugins/imagepicker/ImagePickerCache;)V
    .locals 11
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugins/imagepicker/ImageResizer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/flutter/plugins/imagepicker/ImagePickerCache;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v7, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$1;

    invoke-direct {v7, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$1;-><init>(Landroid/app/Activity;)V

    new-instance v8, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2;

    invoke-direct {v8, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2;-><init>(Landroid/app/Activity;)V

    new-instance v9, Lio/flutter/plugins/imagepicker/FileUtils;

    invoke-direct {v9}, Lio/flutter/plugins/imagepicker/FileUtils;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 3
    invoke-direct/range {v0 .. v10}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;-><init>(Landroid/app/Activity;Lio/flutter/plugins/imagepicker/ImageResizer;Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$Result;Lio/flutter/plugins/imagepicker/ImagePickerCache;Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;Lio/flutter/plugins/imagepicker/FileUtils;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lio/flutter/plugins/imagepicker/ImageResizer;Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$Result;Lio/flutter/plugins/imagepicker/ImagePickerCache;Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;Lio/flutter/plugins/imagepicker/FileUtils;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugins/imagepicker/ImageResizer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lio/flutter/plugins/imagepicker/Messages$Result;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lio/flutter/plugins/imagepicker/ImagePickerCache;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lio/flutter/plugins/imagepicker/ImageResizer;",
            "Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;",
            "Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;",
            "Lio/flutter/plugins/imagepicker/Messages$Result<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lio/flutter/plugins/imagepicker/ImagePickerCache;",
            "Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;",
            "Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;",
            "Lio/flutter/plugins/imagepicker/FileUtils;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallStateLock:Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 7
    iput-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->imageResizer:Lio/flutter/plugins/imagepicker/ImageResizer;

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".flutter.image_provider"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileProviderName:Ljava/lang/String;

    if-eqz p5, :cond_0

    .line 9
    new-instance p1, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;

    invoke-direct {p1, p3, p4, p5}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;-><init>(Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$Result;)V

    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallState:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;

    .line 10
    :cond_0
    iput-object p7, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->permissionManager:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;

    .line 11
    iput-object p8, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUriResolver:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;

    .line 12
    iput-object p9, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUtils:Lio/flutter/plugins/imagepicker/FileUtils;

    .line 13
    iput-object p6, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    .line 14
    iput-object p10, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;ILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleChooseMediaResult(ILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;ILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleChooseImageResult(ILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleImageResult(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;ILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleChooseMultiImageResult(ILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;ILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleChooseVideoResult(ILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleCaptureVideoResult(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleCaptureImageResult(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private createTemporaryWritableFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p1, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p1

    .line 23
    :catch_0
    move-exception p1

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method private createTemporaryWritableImageFile()Ljava/io/File;
    .locals 1

    .line 1
    const-string v0, ".jpg"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->createTemporaryWritableFile(Ljava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private createTemporaryWritableVideoFile()Ljava/io/File;
    .locals 1

    .line 1
    const-string v0, ".mp4"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->createTemporaryWritableFile(Ljava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private finishWithAlreadyActiveError(Lio/flutter/plugins/imagepicker/Messages$Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/imagepicker/Messages$Result<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/imagepicker/Messages$FlutterError;

    .line 2
    .line 3
    const-string v1, "Image picker is already active"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "already_active"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lio/flutter/plugins/imagepicker/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lio/flutter/plugins/imagepicker/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private finishWithError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallState:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v1, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;->result:Lio/flutter/plugins/imagepicker/Messages$Result;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    move-object v1, v2

    .line 15
    :goto_0
    iput-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallState:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    .line 21
    .line 22
    invoke-virtual {v0, v2, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->saveResult(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance v0, Lio/flutter/plugins/imagepicker/Messages$FlutterError;

    .line 27
    .line 28
    invoke-direct {v0, p1, p2, v2}, Lio/flutter/plugins/imagepicker/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v0}, Lio/flutter/plugins/imagepicker/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p1
.end method

.method private finishWithListSuccess(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallState:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v1, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;->result:Lio/flutter/plugins/imagepicker/Messages$Result;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    move-object v1, v2

    .line 15
    :goto_0
    iput-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallState:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    .line 21
    .line 22
    invoke-virtual {v0, p1, v2, v2}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->saveResult(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-interface {v1, p1}, Lio/flutter/plugins/imagepicker/Messages$Result;->success(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p1
.end method

.method private finishWithSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallStateLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallState:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, v1, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;->result:Lio/flutter/plugins/imagepicker/Messages$Result;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object v1, v2

    .line 25
    :goto_0
    iput-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallState:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;

    .line 26
    .line 27
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    .line 37
    .line 38
    invoke-virtual {p1, v0, v2, v2}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->saveResult(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void

    .line 42
    :cond_3
    invoke-interface {v1, v0}, Lio/flutter/plugins/imagepicker/Messages$Result;->success(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw v0
.end method

.method private getPathsFromIntent(Landroid/content/Intent;Z)Ljava/util/ArrayList;
    .locals 6
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_5

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ge v1, v3, :cond_4

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    return-object v2

    .line 46
    :cond_1
    iget-object v4, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUtils:Lio/flutter/plugins/imagepicker/FileUtils;

    .line 47
    .line 48
    iget-object v5, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 49
    .line 50
    invoke-virtual {v4, v5, v3}, Lio/flutter/plugins/imagepicker/FileUtils;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-nez v4, :cond_2

    .line 55
    .line 56
    return-object v2

    .line 57
    :cond_2
    if-eqz p2, :cond_3

    .line 58
    .line 59
    iget-object v5, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 60
    .line 61
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v5, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move-object v3, v2

    .line 71
    :goto_1
    new-instance v5, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;

    .line 72
    .line 73
    invoke-direct {v5, p0, v4, v3}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    return-object v0

    .line 83
    :cond_5
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUtils:Lio/flutter/plugins/imagepicker/FileUtils;

    .line 84
    .line 85
    iget-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 86
    .line 87
    invoke-virtual {p1, p2, v1}, Lio/flutter/plugins/imagepicker/FileUtils;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-nez p1, :cond_6

    .line 92
    .line 93
    return-object v2

    .line 94
    :cond_6
    new-instance p2, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;

    .line 95
    .line 96
    invoke-direct {p2, p0, p1, v2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    return-object v0
.end method

.method private getResizedImagePath(Ljava/lang/String;Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;)Ljava/lang/String;
    .locals 3
    .param p2    # Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->imageResizer:Lio/flutter/plugins/imagepicker/ImageResizer;

    .line 2
    .line 3
    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;->getMaxWidth()Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;->getMaxHeight()Ljava/lang/Double;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;->getQuality()Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {v0, p1, v1, v2, p2}, Lio/flutter/plugins/imagepicker/ImageResizer;->resizeImageIfNeeded(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method private grantUriPermissions(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v2, 0x21

    .line 10
    .line 11
    if-lt v1, v2, :cond_0

    .line 12
    .line 13
    const-wide/32 v1, 0x10000

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, p1, v1}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->queryIntentActivitiesPreApi33(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 44
    .line 45
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 46
    .line 47
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 48
    .line 49
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 50
    .line 51
    const/4 v2, 0x3

    .line 52
    invoke-virtual {v1, v0, p2, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    return-void
.end method

.method private handleCaptureImageResult(I)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCameraMediaUri:Landroid/net/Uri;

    .line 5
    .line 6
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUriResolver:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    .line 12
    .line 13
    invoke-virtual {p1}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->retrievePendingCameraMediaUriPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    new-instance v1, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, p1, v1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;->getFullImagePath(Landroid/net/Uri;Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private handleCaptureVideoResult(I)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCameraMediaUri:Landroid/net/Uri;

    .line 5
    .line 6
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUriResolver:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    .line 12
    .line 13
    invoke-virtual {p1}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->retrievePendingCameraMediaUriPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    new-instance v1, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, p1, v1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;->getFullImagePath(Landroid/net/Uri;Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private handleChooseImageResult(ILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->getPathsFromIntent(Landroid/content/Intent;Z)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, "no_valid_image_uri"

    .line 14
    .line 15
    const-string p2, "Cannot find the selected image."

    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleMediaResult(Ljava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private handleChooseMediaResult(ILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->getPathsFromIntent(Landroid/content/Intent;Z)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, "no_valid_media_uri"

    .line 14
    .line 15
    const-string p2, "Cannot find the selected media."

    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleMediaResult(Ljava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private handleChooseMultiImageResult(ILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->getPathsFromIntent(Landroid/content/Intent;Z)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, "missing_valid_image_uri"

    .line 14
    .line 15
    const-string p2, "Cannot find at least one of the selected images."

    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->handleMediaResult(Ljava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private handleChooseVideoResult(ILandroid/content/Intent;)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_2

    .line 3
    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->getPathsFromIntent(Landroid/content/Intent;Z)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ge v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;

    .line 26
    .line 27
    iget-object p1, p1, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;->path:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :goto_0
    const-string p1, "no_valid_video_uri"

    .line 34
    .line 35
    const-string p2, "Cannot find the selected video."

    .line 36
    .line 37
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    const/4 p1, 0x0

    .line 42
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private handleMediaResult(Ljava/util/ArrayList;)V
    .locals 7
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallState:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;->imageOptions:Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_3

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ge v2, v3, :cond_3

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;

    .line 34
    .line 35
    iget-object v4, v3, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;->path:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v5, v3, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;->mimeType:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    const-string v6, "video/"

    .line 42
    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-nez v5, :cond_2

    .line 48
    .line 49
    :cond_1
    iget-object v3, v3, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;->path:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {p0, v3, v1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->getResizedImagePath(Ljava/lang/String;Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-direct {p0, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithListSuccess(Ljava/util/ArrayList;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-ge v2, v1, :cond_5

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;

    .line 76
    .line 77
    iget-object v1, v1, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$MediaPath;->path:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    invoke-direct {p0, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithListSuccess(Ljava/util/ArrayList;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    throw p1
.end method

.method private launchMultiPickImageFromGalleryIntent(Ljava/lang/Boolean;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;

    .line 8
    .line 9
    invoke-direct {p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 13
    .line 14
    new-instance v0, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    .line 15
    .line 16
    invoke-direct {v0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, p2, v0}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;->createIntent(Landroid/content/Context;Landroidx/activity/result/PickVisualMediaRequest;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 35
    .line 36
    const-string p2, "android.intent.action.GET_CONTENT"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p2, "image/*"

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    const-string p2, "android.intent.extra.ALLOW_MULTIPLE"

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 53
    .line 54
    const/16 v0, 0x92a

    .line 55
    .line 56
    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private launchPickImageFromGalleryIntent(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;

    .line 8
    .line 9
    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 13
    .line 14
    new-instance v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    .line 15
    .line 16
    invoke-direct {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v0, v1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;->createIntent(Landroid/content/Context;Landroidx/activity/result/PickVisualMediaRequest;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 35
    .line 36
    const-string v0, "android.intent.action.GET_CONTENT"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "image/*"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 47
    .line 48
    const/16 v1, 0x926

    .line 49
    .line 50
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private launchPickMediaFromGalleryIntent(Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;->getUsePhotoPicker()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;->getAllowMultiple()Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lio/flutter/plugins/imagepicker/ImagePickerUtils;->getLimitFromOption(Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 31
    .line 32
    new-instance v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    .line 33
    .line 34
    invoke-direct {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    .line 35
    .line 36
    .line 37
    sget-object v2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, p1, v1}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;->createIntent(Landroid/content/Context;Landroidx/activity/result/PickVisualMediaRequest;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;

    .line 53
    .line 54
    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 58
    .line 59
    new-instance v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    .line 60
    .line 61
    invoke-direct {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    .line 62
    .line 63
    .line 64
    sget-object v2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, v0, v1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;->createIntent(Landroid/content/Context;Landroidx/activity/result/PickVisualMediaRequest;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 80
    .line 81
    const-string v1, "android.intent.action.GET_CONTENT"

    .line 82
    .line 83
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v1, "*/*"

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    const-string v1, "video/*"

    .line 92
    .line 93
    const-string v2, "image/*"

    .line 94
    .line 95
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v2, "CONTENT_TYPE"

    .line 100
    .line 101
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    .line 105
    .line 106
    invoke-virtual {p1}, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;->getAllowMultiple()Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    move-object p1, v0

    .line 114
    :goto_0
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 115
    .line 116
    const/16 v1, 0x92b

    .line 117
    .line 118
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method private launchPickVideoFromGalleryIntent(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;

    .line 8
    .line 9
    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 13
    .line 14
    new-instance v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    .line 15
    .line 16
    invoke-direct {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VideoOnly;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VideoOnly;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v0, v1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;->createIntent(Landroid/content/Context;Landroidx/activity/result/PickVisualMediaRequest;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 35
    .line 36
    const-string v0, "android.intent.action.GET_CONTENT"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "video/*"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 47
    .line 48
    const/16 v1, 0x930

    .line 49
    .line 50
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private launchTakeImageWithCameraIntent()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cameraDevice:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$CameraDevice;

    .line 9
    .line 10
    sget-object v2, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$CameraDevice;->FRONT:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$CameraDevice;

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->useFrontCamera(Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->createTemporaryWritableImageFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "file:"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCameraMediaUri:Landroid/net/Uri;

    .line 47
    .line 48
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUriResolver:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;

    .line 49
    .line 50
    iget-object v3, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileProviderName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {v2, v3, v1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;->resolveFileProviderUriForFile(Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "output"

    .line 57
    .line 58
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, v0, v2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->grantUriPermissions(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 62
    .line 63
    .line 64
    :try_start_0
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 65
    .line 66
    const/16 v3, 0x927

    .line 67
    .line 68
    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catch_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :goto_0
    const-string v0, "no_available_camera"

    .line 81
    .line 82
    const-string v1, "No cameras available for taking pictures."

    .line 83
    .line 84
    invoke-direct {p0, v0, v1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private launchTakeVideoWithCameraIntent()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallStateLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallState:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v2, v2, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;->videoOptions:Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2}, Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;->getMaxDurationSeconds()Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2}, Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;->getMaxDurationSeconds()Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const-string v2, "android.intent.extra.durationLimit"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cameraDevice:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$CameraDevice;

    .line 44
    .line 45
    sget-object v2, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$CameraDevice;->FRONT:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$CameraDevice;

    .line 46
    .line 47
    if-ne v1, v2, :cond_2

    .line 48
    .line 49
    invoke-direct {p0, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->useFrontCamera(Landroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->createTemporaryWritableVideoFile()Ljava/io/File;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v3, "file:"

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iput-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCameraMediaUri:Landroid/net/Uri;

    .line 82
    .line 83
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileUriResolver:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;

    .line 84
    .line 85
    iget-object v3, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->fileProviderName:Ljava/lang/String;

    .line 86
    .line 87
    invoke-interface {v2, v3, v1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$FileUriResolver;->resolveFileProviderUriForFile(Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const-string v3, "output"

    .line 92
    .line 93
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v0, v2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->grantUriPermissions(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 97
    .line 98
    .line 99
    :try_start_1
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->activity:Landroid/app/Activity;

    .line 100
    .line 101
    const/16 v3, 0x931

    .line 102
    .line 103
    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catch_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catch_1
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    .line 114
    .line 115
    :goto_1
    const-string v0, "no_available_camera"

    .line 116
    .line 117
    const-string v1, "No cameras available for taking pictures."

    .line 118
    .line 119
    invoke-direct {p0, v0, v1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    throw v0
.end method

.method private needRequestCameraPermission()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->permissionManager:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;->needRequestCameraPermission()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private static queryIntentActivitiesPreApi33(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const/high16 v0, 0x10000

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private setPendingOptionsAndResult(Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$Result;)Z
    .locals 2
    .param p1    # Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/flutter/plugins/imagepicker/Messages$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;",
            "Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;",
            "Lio/flutter/plugins/imagepicker/Messages$Result<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallState:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    monitor-exit v0

    .line 10
    return p1

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;

    .line 14
    .line 15
    invoke-direct {v1, p1, p2, p3}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;-><init>(Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$Result;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallState:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;

    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    .line 22
    .line 23
    invoke-virtual {p1}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->clear()V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method private useFrontCamera(Landroid/content/Intent;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const-string v1, "android.intent.extras.CAMERA_FACING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    const/16 v1, 0x1a

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    const-string v0, "android.intent.extra.USE_FRONT_CAMERA"

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public chooseImageFromGallery(Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;ZLio/flutter/plugins/imagepicker/Messages$Result;)V
    .locals 1
    .param p1    # Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/flutter/plugins/imagepicker/Messages$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;",
            "Z",
            "Lio/flutter/plugins/imagepicker/Messages$Result<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p3}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->setPendingOptionsAndResult(Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$Result;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p3}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithAlreadyActiveError(Lio/flutter/plugins/imagepicker/Messages$Result;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->launchPickImageFromGalleryIntent(Ljava/lang/Boolean;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public chooseMediaFromGallery(Lio/flutter/plugins/imagepicker/Messages$MediaSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;Lio/flutter/plugins/imagepicker/Messages$Result;)V
    .locals 1
    .param p1    # Lio/flutter/plugins/imagepicker/Messages$MediaSelectionOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/flutter/plugins/imagepicker/Messages$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/imagepicker/Messages$MediaSelectionOptions;",
            "Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;",
            "Lio/flutter/plugins/imagepicker/Messages$Result<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/flutter/plugins/imagepicker/Messages$MediaSelectionOptions;->getImageSelectionOptions()Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0, p3}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->setPendingOptionsAndResult(Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$Result;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p3}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithAlreadyActiveError(Lio/flutter/plugins/imagepicker/Messages$Result;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-direct {p0, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->launchPickMediaFromGalleryIntent(Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public chooseMultiImageFromGallery(Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;ZILio/flutter/plugins/imagepicker/Messages$Result;)V
    .locals 1
    .param p1    # Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/flutter/plugins/imagepicker/Messages$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;",
            "ZI",
            "Lio/flutter/plugins/imagepicker/Messages$Result<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p4}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->setPendingOptionsAndResult(Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$Result;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p4}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithAlreadyActiveError(Lio/flutter/plugins/imagepicker/Messages$Result;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1, p3}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->launchMultiPickImageFromGalleryIntent(Ljava/lang/Boolean;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public chooseVideoFromGallery(Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;ZLio/flutter/plugins/imagepicker/Messages$Result;)V
    .locals 1
    .param p1    # Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/flutter/plugins/imagepicker/Messages$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;",
            "Z",
            "Lio/flutter/plugins/imagepicker/Messages$Result<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p3}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->setPendingOptionsAndResult(Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$Result;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p3}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithAlreadyActiveError(Lio/flutter/plugins/imagepicker/Messages$Result;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->launchPickVideoFromGalleryIntent(Ljava/lang/Boolean;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public handleImageResult(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallState:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;->imageOptions:Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-direct {p0, p1, v1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->getResizedImagePath(Ljava/lang/String;Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    new-instance p2, Ljava/io/File;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-direct {p0, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    invoke-direct {p0, p1}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithSuccess(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x926

    .line 2
    .line 3
    if-eq p1, v0, :cond_5

    .line 4
    .line 5
    const/16 v0, 0x927

    .line 6
    .line 7
    if-eq p1, v0, :cond_4

    .line 8
    .line 9
    const/16 v0, 0x92a

    .line 10
    .line 11
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    const/16 v0, 0x92b

    .line 14
    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    const/16 v0, 0x930

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/16 p3, 0x931

    .line 22
    .line 23
    if-eq p1, p3, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    :cond_0
    new-instance p1, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 28
    .line 29
    invoke-direct {p1, p0, p2}, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance p1, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 34
    .line 35
    invoke-direct {p1, p0, p2, p3}, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;ILandroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    new-instance p1, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 40
    .line 41
    invoke-direct {p1, p0, p2, p3}, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;ILandroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    new-instance p1, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 46
    .line 47
    invoke-direct {p1, p0, p2, p3}, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;ILandroid/content/Intent;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    new-instance p1, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 52
    .line 53
    invoke-direct {p1, p0, p2}, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    new-instance p1, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 58
    .line 59
    invoke-direct {p1, p0, p2, p3}, Lio/flutter/plugins/imagepicker/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate;ILandroid/content/Intent;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object p2, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->executor:Ljava/util/concurrent/ExecutorService;

    .line 63
    .line 64
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    array-length p2, p3

    .line 2
    const/4 v0, 0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    if-lez p2, :cond_0

    .line 5
    .line 6
    aget p2, p3, v1

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    move p2, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p2, v1

    .line 13
    :goto_0
    const/16 p3, 0x933

    .line 14
    .line 15
    const/16 v2, 0x929

    .line 16
    .line 17
    if-eq p1, v2, :cond_2

    .line 18
    .line 19
    if-eq p1, p3, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    if-eqz p2, :cond_3

    .line 23
    .line 24
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->launchTakeVideoWithCameraIntent()V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    if-eqz p2, :cond_3

    .line 29
    .line 30
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->launchTakeImageWithCameraIntent()V

    .line 31
    .line 32
    .line 33
    :cond_3
    :goto_1
    if-nez p2, :cond_5

    .line 34
    .line 35
    if-eq p1, v2, :cond_4

    .line 36
    .line 37
    if-eq p1, p3, :cond_4

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_4
    const-string p1, "camera_access_denied"

    .line 41
    .line 42
    const-string p2, "The user did not allow camera access."

    .line 43
    .line 44
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithError(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_5
    :goto_2
    return v0
.end method

.method public retrieveLostImage()Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->getCacheMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance v1, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;

    .line 16
    .line 17
    invoke-direct {v1}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "type"

    .line 21
    .line 22
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;->setType(Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;)Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;

    .line 31
    .line 32
    .line 33
    :cond_1
    const-string v2, "error"

    .line 34
    .line 35
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;->setError(Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;)Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;

    .line 42
    .line 43
    .line 44
    const-string v2, "pathList"

    .line 45
    .line 46
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/util/ArrayList;

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    new-instance v3, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x0

    .line 64
    :goto_0
    if-ge v5, v4, :cond_3

    .line 65
    .line 66
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    add-int/lit8 v5, v5, 0x1

    .line 71
    .line 72
    check-cast v6, Ljava/lang/String;

    .line 73
    .line 74
    const-string v7, "maxWidth"

    .line 75
    .line 76
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    check-cast v7, Ljava/lang/Double;

    .line 81
    .line 82
    const-string v8, "maxHeight"

    .line 83
    .line 84
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    check-cast v8, Ljava/lang/Double;

    .line 89
    .line 90
    const-string v9, "imageQuality"

    .line 91
    .line 92
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    check-cast v9, Ljava/lang/Integer;

    .line 97
    .line 98
    if-nez v9, :cond_2

    .line 99
    .line 100
    const/16 v9, 0x64

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    :goto_1
    iget-object v10, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->imageResizer:Lio/flutter/plugins/imagepicker/ImageResizer;

    .line 108
    .line 109
    invoke-virtual {v10, v6, v7, v8, v9}, Lio/flutter/plugins/imagepicker/ImageResizer;->resizeImageIfNeeded(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {v1, v3}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;->setPaths(Ljava/util/List;)Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    .line 121
    .line 122
    invoke-virtual {v0}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->clear()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;->build()Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    return-object v0
.end method

.method public saveStateBeforeResult()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCallState:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, v1, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PendingCallState;->imageOptions:Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;

    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    sget-object v2, Lio/flutter/plugins/imagepicker/ImagePickerCache$CacheType;->IMAGE:Lio/flutter/plugins/imagepicker/ImagePickerCache$CacheType;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object v2, Lio/flutter/plugins/imagepicker/ImagePickerCache$CacheType;->VIDEO:Lio/flutter/plugins/imagepicker/ImagePickerCache$CacheType;

    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0, v2}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->saveType(Lio/flutter/plugins/imagepicker/ImagePickerCache$CacheType;)V

    .line 25
    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->saveDimensionWithOutputOptions(Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->pendingCameraMediaUri:Landroid/net/Uri;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cache:Lio/flutter/plugins/imagepicker/ImagePickerCache;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lio/flutter/plugins/imagepicker/ImagePickerCache;->savePendingCameraMediaUriPath(Landroid/net/Uri;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    return-void

    .line 44
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw v1
.end method

.method public setCameraDevice(Lio/flutter/plugins/imagepicker/ImagePickerDelegate$CameraDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->cameraDevice:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$CameraDevice;

    .line 2
    .line 3
    return-void
.end method

.method public takeImageWithCamera(Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$Result;)V
    .locals 1
    .param p1    # Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugins/imagepicker/Messages$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;",
            "Lio/flutter/plugins/imagepicker/Messages$Result<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->setPendingOptionsAndResult(Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$Result;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithAlreadyActiveError(Lio/flutter/plugins/imagepicker/Messages$Result;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->needRequestCameraPermission()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->permissionManager:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;

    .line 19
    .line 20
    const-string p2, "android.permission.CAMERA"

    .line 21
    .line 22
    invoke-interface {p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;->isPermissionGranted(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->permissionManager:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;

    .line 29
    .line 30
    const/16 v0, 0x929

    .line 31
    .line 32
    invoke-interface {p1, p2, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;->askForPermission(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->launchTakeImageWithCameraIntent()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public takeVideoWithCamera(Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$Result;)V
    .locals 1
    .param p1    # Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugins/imagepicker/Messages$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;",
            "Lio/flutter/plugins/imagepicker/Messages$Result<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->setPendingOptionsAndResult(Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;Lio/flutter/plugins/imagepicker/Messages$Result;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->finishWithAlreadyActiveError(Lio/flutter/plugins/imagepicker/Messages$Result;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->needRequestCameraPermission()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->permissionManager:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;

    .line 19
    .line 20
    const-string p2, "android.permission.CAMERA"

    .line 21
    .line 22
    invoke-interface {p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;->isPermissionGranted(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->permissionManager:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;

    .line 29
    .line 30
    const/16 v0, 0x933

    .line 31
    .line 32
    invoke-interface {p1, p2, v0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$PermissionManager;->askForPermission(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-direct {p0}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate;->launchTakeVideoWithCameraIntent()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
