.class public abstract Lcom/google/android/engage/protocol/IAppEngageService$Stub;
.super Lcom/google/android/gms/internal/engage/zzb;
.source "Proguard"

# interfaces
.implements Lcom/google/android/engage/protocol/IAppEngageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/protocol/IAppEngageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/protocol/IAppEngageService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.engage.protocol.IAppEngageService"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/engage/zzb;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/engage/protocol/IAppEngageService;
    .locals 2
    .param p0    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.google.android.engage.protocol.IAppEngageService"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/google/android/engage/protocol/IAppEngageService;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Lcom/google/android/engage/protocol/IAppEngageService;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    new-instance v0, Lcom/google/android/engage/protocol/IAppEngageService$Stub$Proxy;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/google/android/engage/protocol/IAppEngageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method


# virtual methods
.method public dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .param p2    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 p3, 0x1

    .line 2
    if-eq p1, p3, :cond_3

    .line 3
    .line 4
    const/4 p4, 0x2

    .line 5
    if-eq p1, p4, :cond_2

    .line 6
    .line 7
    const/4 p4, 0x3

    .line 8
    if-eq p1, p4, :cond_1

    .line 9
    .line 10
    const/4 p4, 0x4

    .line 11
    if-eq p1, p4, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/engage/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    invoke-static {p4}, Lcom/google/android/engage/protocol/IAppEngageServicePublishStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/engage/protocol/IAppEngageServicePublishStatusCallback;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    invoke-static {p2}, Lcom/google/android/gms/internal/engage/zzc;->zzb(Landroid/os/Parcel;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, p1, p4}, Lcom/google/android/engage/protocol/IAppEngageService;->updatePublishStatus(Landroid/os/Bundle;Lcom/google/android/engage/protocol/IAppEngageServicePublishStatusCallback;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    .line 40
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/engage/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/os/Bundle;

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 47
    .line 48
    .line 49
    move-result-object p4

    .line 50
    invoke-static {p4}, Lcom/google/android/engage/protocol/IAppEngageServiceAvailableCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/engage/protocol/IAppEngageServiceAvailableCallback;

    .line 51
    .line 52
    .line 53
    move-result-object p4

    .line 54
    invoke-static {p2}, Lcom/google/android/gms/internal/engage/zzc;->zzb(Landroid/os/Parcel;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0, p1, p4}, Lcom/google/android/engage/protocol/IAppEngageService;->isServiceAvailable(Landroid/os/Bundle;Lcom/google/android/engage/protocol/IAppEngageServiceAvailableCallback;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    .line 63
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/engage/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    invoke-static {p4}, Lcom/google/android/engage/protocol/IAppEngageServiceDeleteClustersCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/engage/protocol/IAppEngageServiceDeleteClustersCallback;

    .line 74
    .line 75
    .line 76
    move-result-object p4

    .line 77
    invoke-static {p2}, Lcom/google/android/gms/internal/engage/zzc;->zzb(Landroid/os/Parcel;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p0, p1, p4}, Lcom/google/android/engage/protocol/IAppEngageService;->deleteClusters(Landroid/os/Bundle;Lcom/google/android/engage/protocol/IAppEngageServiceDeleteClustersCallback;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 85
    .line 86
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/engage/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/os/Bundle;

    .line 91
    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    invoke-static {p4}, Lcom/google/android/engage/protocol/IAppEngageServicePublishClustersCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/engage/protocol/IAppEngageServicePublishClustersCallback;

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    invoke-static {p2}, Lcom/google/android/gms/internal/engage/zzc;->zzb(Landroid/os/Parcel;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {p0, p1, p4}, Lcom/google/android/engage/protocol/IAppEngageService;->publishClusters(Landroid/os/Bundle;Lcom/google/android/engage/protocol/IAppEngageServicePublishClustersCallback;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    return p3
.end method
