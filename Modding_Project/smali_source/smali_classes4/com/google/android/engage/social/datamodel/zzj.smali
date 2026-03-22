.class final Lcom/google/android/engage/social/datamodel/zzj;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:Landroid/net/Uri;

.field private final zzb:Lcom/google/android/engage/common/datamodel/zzu;

.field private final zzc:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/social/datamodel/zzh;Lcom/google/android/engage/social/datamodel/zzi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/zzh;->zzb(Lcom/google/android/engage/social/datamodel/zzh;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/google/android/engage/common/datamodel/zzs;->zzd()Lcom/google/android/engage/common/datamodel/zzu;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/google/android/engage/social/datamodel/zzj;->zzb:Lcom/google/android/engage/common/datamodel/zzu;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/zzh;->zza(Lcom/google/android/engage/social/datamodel/zzh;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/google/android/engage/social/datamodel/zzj;->zza:Landroid/net/Uri;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/google/android/engage/social/datamodel/zzh;->zzi(Lcom/google/android/engage/social/datamodel/zzh;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/zzj;->zzc:Ljava/util/List;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final zza()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/zzj;->zza:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/zzj;->zza:Landroid/net/Uri;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v2, "A"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/zzj;->zzb:Lcom/google/android/engage/common/datamodel/zzu;

    .line 16
    .line 17
    const-string v2, "B"

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/zzu;->zza()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/engage/social/datamodel/zzj;->zzc:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;->zza()Landroid/os/Bundle;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string v1, "C"

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-object v0
.end method

.method public final zzc()Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/zzj;->zzb:Lcom/google/android/engage/common/datamodel/zzu;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/zzu;->zzb()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzd()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/zzj;->zzc:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zze()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/social/datamodel/zzj;->zzb:Lcom/google/android/engage/common/datamodel/zzu;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/zzu;->zzc()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
