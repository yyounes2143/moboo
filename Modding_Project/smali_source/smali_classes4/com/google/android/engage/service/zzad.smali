.class final Lcom/google/android/engage/service/zzad;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/engage/service/zzae;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/engage/service/zzae;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v0, v3}, Lcom/google/android/engage/service/zzae;->zza(I)Lcom/google/android/engage/service/zzae;

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Lcom/google/android/engage/service/ClusterMetadata;

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/google/android/engage/service/ClusterMetadata;-><init>(Lcom/google/android/engage/service/zzae;)V

    .line 28
    .line 29
    .line 30
    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/google/android/engage/service/ClusterMetadata;

    .line 2
    .line 3
    return-object p1
.end method
