.class public final Lcom/google/android/engage/common/datamodel/zzm;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:Z

.field private final zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

.field private final zzc:Ljava/util/List;

.field private final zzd:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/common/datamodel/zzk;Lcom/google/android/engage/common/datamodel/zzl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/zzk;->zzi(Lcom/google/android/engage/common/datamodel/zzk;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/zzm;->zzc:Ljava/util/List;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/zzk;->zzj(Lcom/google/android/engage/common/datamodel/zzk;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    iput-boolean p2, p0, Lcom/google/android/engage/common/datamodel/zzm;->zza:Z

    .line 19
    .line 20
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/zzk;->zza(Lcom/google/android/engage/common/datamodel/zzk;)Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/zzm;->zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/zzk;->zzh(Lcom/google/android/engage/common/datamodel/zzk;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/zzm;->zzd:Lcom/google/common/collect/ImmutableList;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final zza()Landroid/os/Bundle;
    .locals 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "A"

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/google/android/engage/common/datamodel/zzm;->zza:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/zzm;->zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v2, "B"

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/AccountProfile;->zza()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/zzm;->zzc:Ljava/util/List;

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
    check-cast v3, Lcom/google/android/engage/common/datamodel/Entity;

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/google/android/engage/common/datamodel/Entity;->toBundle()Landroid/os/Bundle;

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
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/zzm;->zzd:Lcom/google/common/collect/ImmutableList;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_4

    .line 75
    .line 76
    new-instance v2, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    const/4 v4, 0x0

    .line 86
    :goto_1
    if-ge v4, v3, :cond_3

    .line 87
    .line 88
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;

    .line 93
    .line 94
    invoke-virtual {v5}, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;->zza()Landroid/os/Bundle;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    add-int/lit8 v4, v4, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    const-string v1, "D"

    .line 105
    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    return-object v0
.end method

.method public final zzb()Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzm;->zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzc()Lcom/google/common/collect/ImmutableList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzm;->zzd:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzd()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzm;->zzc:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zze()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/engage/common/datamodel/zzm;->zza:Z

    .line 2
    .line 3
    return v0
.end method
