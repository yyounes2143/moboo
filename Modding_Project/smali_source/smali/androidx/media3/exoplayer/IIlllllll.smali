.class public final synthetic Landroidx/media3/exoplayer/IIlllllll;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwww:Z

.field public final synthetic Wwwwwwwwwwwwwwwwwwwww:Ljava/io/IOException;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/source/MediaLoadData;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/util/Pair;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/IIlllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/IIlllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/util/Pair;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/IIlllllll;->Wwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/IIlllllll;->Wwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/media3/exoplayer/IIlllllll;->Wwwwwwwwwwwwwwwwwwwww:Ljava/io/IOException;

    .line 13
    .line 14
    iput-boolean p6, p0, Landroidx/media3/exoplayer/IIlllllll;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/IIlllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/IIlllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/util/Pair;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/IIlllllll;->Wwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/media3/exoplayer/IIlllllll;->Wwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/media3/exoplayer/IIlllllll;->Wwwwwwwwwwwwwwwwwwwww:Ljava/io/IOException;

    .line 10
    .line 11
    iget-boolean v5, p0, Landroidx/media3/exoplayer/IIlllllll;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
