.class final synthetic Lcom/google/android/gms/location/zzae;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zza:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private final zzb:Lcom/google/android/gms/location/zzap;

.field private final zzc:Lcom/google/android/gms/location/LocationCallback;

.field private final zzd:Lcom/google/android/gms/location/zzan;

.field private final zze:Lcom/google/android/gms/internal/location/zzba;

.field private final zzf:Lcom/google/android/gms/common/api/internal/ListenerHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/location/zzap;Lcom/google/android/gms/location/LocationCallback;Lcom/google/android/gms/location/zzan;Lcom/google/android/gms/internal/location/zzba;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/location/zzae;->zza:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/location/zzae;->zzb:Lcom/google/android/gms/location/zzap;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/location/zzae;->zzc:Lcom/google/android/gms/location/LocationCallback;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/location/zzae;->zzd:Lcom/google/android/gms/location/zzan;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/location/zzae;->zze:Lcom/google/android/gms/internal/location/zzba;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/location/zzae;->zzf:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/location/zzae;->zza:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/location/zzae;->zzb:Lcom/google/android/gms/location/zzap;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/location/zzae;->zzc:Lcom/google/android/gms/location/LocationCallback;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/location/zzae;->zzd:Lcom/google/android/gms/location/zzan;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/location/zzae;->zze:Lcom/google/android/gms/internal/location/zzba;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/google/android/gms/location/zzae;->zzf:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 12
    .line 13
    move-object v6, p1

    .line 14
    check-cast v6, Lcom/google/android/gms/internal/location/zzaz;

    .line 15
    .line 16
    move-object v7, p2

    .line 17
    check-cast v7, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 18
    .line 19
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/location/FusedLocationProviderClient;->zzb(Lcom/google/android/gms/location/zzap;Lcom/google/android/gms/location/LocationCallback;Lcom/google/android/gms/location/zzan;Lcom/google/android/gms/internal/location/zzba;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/internal/location/zzaz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
