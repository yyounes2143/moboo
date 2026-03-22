.class public final synthetic Landroidx/media3/exoplayer/Www;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/common/base/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/exoplayer/DefaultLoadControl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
