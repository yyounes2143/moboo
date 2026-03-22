.class public final synthetic Landroidx/media3/exoplayer/IIllllll;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/source/MediaLoadData;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/util/Pair;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/IIllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/IIllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/util/Pair;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/IIllllll;->Wwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/IIllllll;->Wwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/IIllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/IIllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/util/Pair;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/IIllllll;->Wwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/media3/exoplayer/IIllllll;->Wwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
