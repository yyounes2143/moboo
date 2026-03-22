.class public Lcom/tencent/vod/flutter/model/TXPipResult;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/vod/flutter/model/TXPipResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsPlaying:Z

.field private mPlayTime:Ljava/lang/Float;

.field private mPlayerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/model/TXPipResult$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/model/TXPipResult$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/vod/flutter/model/TXPipResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/vod/flutter/model/TXPipResult;->mPlayTime:Ljava/lang/Float;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/vod/flutter/model/TXPipResult;->mPlayTime:Ljava/lang/Float;

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/model/TXPipResult;->mIsPlaying:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/tencent/vod/flutter/model/TXPipResult;->mPlayerId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getPlayTime()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/model/TXPipResult;->mPlayTime:Ljava/lang/Float;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_0
    return-object v0
.end method

.method public getPlayerId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/model/TXPipResult;->mPlayerId:I

    .line 2
    .line 3
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/model/TXPipResult;->mIsPlaying:Z

    .line 2
    .line 3
    return v0
.end method

.method public setPlayTime(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/model/TXPipResult;->mPlayTime:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayerId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/vod/flutter/model/TXPipResult;->mPlayerId:I

    .line 2
    .line 3
    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/vod/flutter/model/TXPipResult;->mIsPlaying:Z

    .line 2
    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/tencent/vod/flutter/model/TXPipResult;->mPlayTime:Ljava/lang/Float;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x1

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/tencent/vod/flutter/model/TXPipResult;->mPlayTime:Ljava/lang/Float;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-boolean p2, p0, Lcom/tencent/vod/flutter/model/TXPipResult;->mIsPlaying:Z

    .line 24
    .line 25
    int-to-byte p2, p2

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 27
    .line 28
    .line 29
    iget p2, p0, Lcom/tencent/vod/flutter/model/TXPipResult;->mPlayerId:I

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
