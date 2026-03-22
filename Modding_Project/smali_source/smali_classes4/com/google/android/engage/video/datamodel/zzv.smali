.class public final Lcom/google/android/engage/video/datamodel/zzv;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/zzu;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/Long;

.field private final zzd:I

.field private final zze:Ljava/lang/Long;

.field private final zzf:Lcom/google/common/collect/ImmutableList;

.field private final zzg:Ljava/lang/String;

.field private final zzh:Lcom/google/android/engage/common/datamodel/RecommendationReason;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/video/datamodel/zzt;Lcom/google/android/engage/video/datamodel/zzu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzb(Lcom/google/android/engage/video/datamodel/zzt;)Lcom/google/android/engage/common/datamodel/zzs;

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
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/zzv;->zza:Lcom/google/android/engage/common/datamodel/zzu;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzs(Lcom/google/android/engage/video/datamodel/zzt;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzb:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzp(Lcom/google/android/engage/video/datamodel/zzt;)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzc:Ljava/lang/Long;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzo(Lcom/google/android/engage/video/datamodel/zzt;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzf:Lcom/google/common/collect/ImmutableList;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzq(Lcom/google/android/engage/video/datamodel/zzt;)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/zzv;->zze:Ljava/lang/Long;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/zzt;->zza(Lcom/google/android/engage/video/datamodel/zzt;)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iput p2, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzd:I

    .line 47
    .line 48
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzr(Lcom/google/android/engage/video/datamodel/zzt;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iput-object p2, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzg:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/google/android/engage/video/datamodel/zzt;->zzc(Lcom/google/android/engage/video/datamodel/zzt;)Lcom/google/android/engage/common/datamodel/RecommendationReason;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzh:Lcom/google/android/engage/common/datamodel/RecommendationReason;

    .line 59
    .line 60
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
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/zzv;->zza:Lcom/google/android/engage/common/datamodel/zzu;

    .line 7
    .line 8
    const-string v2, "A"

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/zzu;->zza()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzb:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    const-string v2, "B"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzc:Ljava/lang/Long;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const-string v2, "C"

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/zzv;->zze:Ljava/lang/Long;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const-string v2, "F"

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget v1, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzd:I

    .line 57
    .line 58
    const-string v2, "D"

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzf:Lcom/google/common/collect/ImmutableList;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_4

    .line 70
    .line 71
    new-instance v2, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    const/4 v4, 0x0

    .line 81
    :goto_0
    if-ge v4, v3, :cond_3

    .line 82
    .line 83
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;

    .line 88
    .line 89
    invoke-virtual {v5}, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;->zza()Landroid/os/Bundle;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    add-int/lit8 v4, v4, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    const-string v1, "E"

    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzg:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-nez v2, :cond_5

    .line 111
    .line 112
    const-string v2, "G"

    .line 113
    .line 114
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    iget-object v1, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzh:Lcom/google/android/engage/common/datamodel/RecommendationReason;

    .line 118
    .line 119
    if-eqz v1, :cond_6

    .line 120
    .line 121
    const-string v2, "H"

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/RecommendationReason;->zza()Landroid/os/Bundle;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 128
    .line 129
    .line 130
    :cond_6
    return-object v0
.end method

.method public final zzb()Lcom/google/common/base/Optional;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzg:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final zzc()Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/zzv;->zza:Lcom/google/android/engage/common/datamodel/zzu;

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

.method public final zzd()Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzc:Ljava/lang/Long;

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

.method public final zze()Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/zzv;->zze:Ljava/lang/Long;

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

.method public final zzf()Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzh:Lcom/google/android/engage/common/datamodel/RecommendationReason;

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

.method public final zzg()Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzd:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzi()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/zzv;->zzf:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzj()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/video/datamodel/zzv;->zza:Lcom/google/android/engage/common/datamodel/zzu;

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
