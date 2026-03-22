.class public final Lcom/google/android/engage/common/datamodel/zzad;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/util/List;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/Long;

.field private final zze:Landroid/net/Uri;

.field private final zzf:Lcom/google/android/engage/common/datamodel/OrderReadyTimeWindow;

.field private final zzg:Ljava/lang/Integer;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Lcom/google/common/collect/ImmutableList;

.field private final zzj:Lcom/google/android/engage/common/datamodel/Price;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/common/datamodel/zzab;Lcom/google/android/engage/common/datamodel/zzac;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzw(Lcom/google/android/engage/common/datamodel/zzab;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/zzad;->zza:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzq(Lcom/google/android/engage/common/datamodel/zzab;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzb:Ljava/util/List;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzv(Lcom/google/android/engage/common/datamodel/zzab;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzc:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzt(Lcom/google/android/engage/common/datamodel/zzab;)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzd:Ljava/lang/Long;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/zzab;->zza(Lcom/google/android/engage/common/datamodel/zzab;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/zzad;->zze:Landroid/net/Uri;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzb(Lcom/google/android/engage/common/datamodel/zzab;)Lcom/google/android/engage/common/datamodel/OrderReadyTimeWindow;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzf:Lcom/google/android/engage/common/datamodel/OrderReadyTimeWindow;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzs(Lcom/google/android/engage/common/datamodel/zzab;)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzg:Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzu(Lcom/google/android/engage/common/datamodel/zzab;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzh:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzp(Lcom/google/android/engage/common/datamodel/zzab;)Lcom/google/android/engage/common/datamodel/Price;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzj:Lcom/google/android/engage/common/datamodel/Price;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/zzab;->zzr(Lcom/google/android/engage/common/datamodel/zzab;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzi:Lcom/google/common/collect/ImmutableList;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final zza()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzad;->zze:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/zzad;->zza:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v2, "A"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzb:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/google/android/engage/common/datamodel/Image;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/google/android/engage/common/datamodel/Image;->zza()Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string v1, "B"

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzc:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    const-string v2, "C"

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzd:Ljava/lang/Long;

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    const-string v2, "D"

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/zzad;->zze:Landroid/net/Uri;

    .line 80
    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    const-string v2, "E"

    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzf:Lcom/google/android/engage/common/datamodel/OrderReadyTimeWindow;

    .line 89
    .line 90
    if-eqz v1, :cond_6

    .line 91
    .line 92
    const-string v2, "F"

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/OrderReadyTimeWindow;->zza()Landroid/os/Bundle;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 99
    .line 100
    .line 101
    :cond_6
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzg:Ljava/lang/Integer;

    .line 102
    .line 103
    if-eqz v1, :cond_7

    .line 104
    .line 105
    const-string v2, "G"

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    :cond_7
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzh:Ljava/lang/String;

    .line 115
    .line 116
    if-eqz v1, :cond_8

    .line 117
    .line 118
    const-string v2, "H"

    .line 119
    .line 120
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_8
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzj:Lcom/google/android/engage/common/datamodel/Price;

    .line 124
    .line 125
    if-eqz v1, :cond_9

    .line 126
    .line 127
    const-string v2, "I"

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Price;->zza()Landroid/os/Bundle;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 134
    .line 135
    .line 136
    :cond_9
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzi:Lcom/google/common/collect/ImmutableList;

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_a

    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    new-array v2, v2, [Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, [Ljava/lang/String;

    .line 152
    .line 153
    const-string v2, "J"

    .line 154
    .line 155
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_a
    return-object v0
.end method

.method public final zzc()Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzg:Ljava/lang/Integer;

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

.method public final zzd()Lcom/google/common/base/Optional;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzh:Ljava/lang/String;

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

.method public final zze()Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzf:Lcom/google/android/engage/common/datamodel/OrderReadyTimeWindow;

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
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzj:Lcom/google/android/engage/common/datamodel/Price;

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

.method public final zzg()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzd:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzad;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzj()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzb:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzk()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzad;->zzi:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method
