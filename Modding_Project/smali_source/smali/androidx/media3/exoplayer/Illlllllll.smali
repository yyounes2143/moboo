.class public final synthetic Landroidx/media3/exoplayer/Illlllllll;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/PlayerMessage;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/ExoPlayerImplInternal;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/Illlllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/Illlllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/PlayerMessage;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/Illlllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/Illlllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/PlayerMessage;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/PlayerMessage;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
