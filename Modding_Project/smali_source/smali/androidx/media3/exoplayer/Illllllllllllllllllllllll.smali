.class public final synthetic Landroidx/media3/exoplayer/Illllllllllllllllllllllll;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/common/Player$PositionInfo;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/common/Player$PositionInfo;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I


# direct methods
.method public synthetic constructor <init>(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/exoplayer/Illllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/Illllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/common/Player$PositionInfo;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/Illllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/common/Player$PositionInfo;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/Illllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/Illllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/common/Player$PositionInfo;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/Illllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/common/Player$PositionInfo;

    .line 6
    .line 7
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$Listener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
