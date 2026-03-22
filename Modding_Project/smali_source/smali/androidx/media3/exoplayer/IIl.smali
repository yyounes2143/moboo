.class public final synthetic Landroidx/media3/exoplayer/IIl;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/util/Pair;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/IIl;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/IIl;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/util/Pair;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/IIl;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/IIl;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/util/Pair;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
