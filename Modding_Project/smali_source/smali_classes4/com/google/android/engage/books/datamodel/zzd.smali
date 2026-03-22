.class final Lcom/google/android/engage/books/datamodel/zzd;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/zzu;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Landroid/net/Uri;

.field private final zzd:Lcom/google/android/engage/common/datamodel/Rating;

.field private final zze:I

.field private final zzf:Z

.field private final zzg:Lcom/google/common/collect/ImmutableList;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Lcom/google/common/collect/ImmutableList;

.field private final zzj:Ljava/lang/Long;

.field private final zzk:Ljava/lang/Integer;

.field private final zzl:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/books/datamodel/zzb;Lcom/google/android/engage/books/datamodel/zzc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzr(Lcom/google/android/engage/books/datamodel/zzb;)Lcom/google/android/engage/common/datamodel/zzs;

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
    iput-object p2, p0, Lcom/google/android/engage/books/datamodel/zzd;->zza:Lcom/google/android/engage/common/datamodel/zzu;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzc(Lcom/google/android/engage/books/datamodel/zzb;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzc:Landroid/net/Uri;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/zzb;->zza(Lcom/google/android/engage/books/datamodel/zzb;)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iput p2, p0, Lcom/google/android/engage/books/datamodel/zzd;->zze:I

    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzb(Lcom/google/android/engage/books/datamodel/zzb;)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iput p2, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzl:I

    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzw(Lcom/google/android/engage/books/datamodel/zzb;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iput-object p2, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzh:Ljava/lang/String;

    .line 37
    .line 38
    iget-object p2, p1, Lcom/google/android/engage/books/datamodel/zzb;->zza:Lcom/google/common/collect/ImmutableList$Builder;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzg:Lcom/google/common/collect/ImmutableList;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzy(Lcom/google/android/engage/books/datamodel/zzb;)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    iput-boolean p2, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzf:Z

    .line 51
    .line 52
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzt(Lcom/google/android/engage/books/datamodel/zzb;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzi:Lcom/google/common/collect/ImmutableList;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzv(Lcom/google/android/engage/books/datamodel/zzb;)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    iput-object p2, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzj:Ljava/lang/Long;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzx(Lcom/google/android/engage/books/datamodel/zzb;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    iput-object p2, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzb:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzu(Lcom/google/android/engage/books/datamodel/zzb;)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    iput-object p2, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzk:Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/google/android/engage/books/datamodel/zzb;->zzs(Lcom/google/android/engage/books/datamodel/zzb;)Lcom/google/android/engage/common/datamodel/Rating;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzd:Lcom/google/android/engage/common/datamodel/Rating;

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/books/datamodel/zzd;->zze:I

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzc:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzc()Landroid/os/Bundle;
    .locals 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/zzd;->zza:Lcom/google/android/engage/common/datamodel/zzu;

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
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzc:Landroid/net/Uri;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v2, "C"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzb:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    const-string v2, "B"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzd:Lcom/google/android/engage/common/datamodel/Rating;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const-string v2, "D"

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Rating;->zza()Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget v1, p0, Lcom/google/android/engage/books/datamodel/zzd;->zze:I

    .line 53
    .line 54
    const-string v2, "E"

    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    iget-boolean v1, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzf:Z

    .line 60
    .line 61
    const-string v2, "F"

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzh:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_3

    .line 73
    .line 74
    const-string v2, "H"

    .line 75
    .line 76
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzi:Lcom/google/common/collect/ImmutableList;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const/4 v3, 0x0

    .line 86
    if-nez v2, :cond_4

    .line 87
    .line 88
    new-array v2, v3, [Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, [Ljava/lang/String;

    .line 95
    .line 96
    const-string v2, "I"

    .line 97
    .line 98
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzj:Ljava/lang/Long;

    .line 102
    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    const-string v2, "J"

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v4

    .line 111
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 112
    .line 113
    .line 114
    :cond_5
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzk:Ljava/lang/Integer;

    .line 115
    .line 116
    if-eqz v1, :cond_6

    .line 117
    .line 118
    const-string v2, "K"

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    :cond_6
    iget v1, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzl:I

    .line 128
    .line 129
    const-string v2, "L"

    .line 130
    .line 131
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzg:Lcom/google/common/collect/ImmutableList;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_8

    .line 141
    .line 142
    new-instance v2, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    :goto_0
    if-ge v3, v4, :cond_7

    .line 152
    .line 153
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    check-cast v5, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;

    .line 158
    .line 159
    invoke-virtual {v5}, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;->zza()Landroid/os/Bundle;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    add-int/lit8 v3, v3, 0x1

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_7
    const-string v1, "G"

    .line 170
    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 172
    .line 173
    .line 174
    :cond_8
    return-object v0
.end method

.method public final zzd()Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzl:I

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

.method public final zze()Lcom/google/common/base/Optional;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzh:Ljava/lang/String;

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

.method public final zzf()Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/zzd;->zza:Lcom/google/android/engage/common/datamodel/zzu;

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

.method public final zzg()Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzj:Ljava/lang/Long;

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

.method public final zzh()Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzk:Ljava/lang/Integer;

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

.method public final zzi()Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzd:Lcom/google/android/engage/common/datamodel/Rating;

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

.method public final zzj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzk()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzg:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzl()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzi:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzm()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/zzd;->zza:Lcom/google/android/engage/common/datamodel/zzu;

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

.method public final zzn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/engage/books/datamodel/zzd;->zzf:Z

    .line 2
    .line 3
    return v0
.end method
