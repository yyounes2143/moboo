.class Lcom/tencent/vod/flutter/model/TXPipResult$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/model/TXPipResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/vod/flutter/model/TXPipResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/vod/flutter/model/TXPipResult;
    .locals 1

    .line 2
    new-instance v0, Lcom/tencent/vod/flutter/model/TXPipResult;

    invoke-direct {v0, p1}, Lcom/tencent/vod/flutter/model/TXPipResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/model/TXPipResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/vod/flutter/model/TXPipResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tencent/vod/flutter/model/TXPipResult;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/tencent/vod/flutter/model/TXPipResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/model/TXPipResult$1;->newArray(I)[Lcom/tencent/vod/flutter/model/TXPipResult;

    move-result-object p1

    return-object p1
.end method
