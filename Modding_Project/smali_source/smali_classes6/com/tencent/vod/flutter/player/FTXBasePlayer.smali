.class public abstract Lcom/tencent/vod/flutter/player/FTXBasePlayer;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static final mAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mPlayerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->mAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->mAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->mPlayerId:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public getPlayerId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/player/FTXBasePlayer;->mPlayerId:I

    .line 2
    .line 3
    return v0
.end method
