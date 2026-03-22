.class public final Landroidx/webkit/WebViewStartUpConfig$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/webkit/WebViewCompat$ExperimentalAsyncStartUp;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/WebViewStartUpConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mShouldRunUiThreadStartUpTasks:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mShouldRunUiThreadStartUpTasks:Z

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public build()Landroidx/webkit/WebViewStartUpConfig;
    .locals 4

    .line 1
    new-instance v0, Landroidx/webkit/WebViewStartUpConfig;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    iget-boolean v2, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mShouldRunUiThreadStartUpTasks:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Landroidx/webkit/WebViewStartUpConfig;-><init>(Ljava/util/concurrent/Executor;ZLandroidx/webkit/WebViewStartUpConfig$1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public setShouldRunUiThreadStartUpTasks(Z)Landroidx/webkit/WebViewStartUpConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mShouldRunUiThreadStartUpTasks:Z

    .line 2
    .line 3
    return-object p0
.end method
