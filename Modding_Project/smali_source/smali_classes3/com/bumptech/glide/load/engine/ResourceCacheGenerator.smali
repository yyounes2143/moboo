.class Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator;
.implements Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DataFetcherGenerator;",
        "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/ResourceCacheKey;

.field public Wwwwwwwwwwwwwwwww:Ljava/io/File;

.field public volatile Wwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/Key;

.field public Wwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeHelper<",
            "*>;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeHelper<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 10
    .line 11
    return-void
.end method

.method private Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/Key;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 8
    .line 9
    sget-object v4, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 8
    .line 9
    sget-object v3, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 10
    .line 11
    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 13

    .line 1
    const-string v0, "ResourceCacheGenerator.startNext"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/util/pool/GlideTrace;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    const-class v0, Ljava/io/File;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwww()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 50
    .line 51
    .line 52
    return v2

    .line 53
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v2, "Failed to find any load path from "

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, " to "

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwww()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto/16 :goto_3

    .line 98
    .line 99
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 100
    .line 101
    const/4 v4, 0x1

    .line 102
    if-eqz v3, :cond_6

    .line 103
    .line 104
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_3

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 113
    .line 114
    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 115
    .line 116
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 123
    .line 124
    iget v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwww:I

    .line 125
    .line 126
    add-int/lit8 v3, v1, 0x1

    .line 127
    .line 128
    iput v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwww:I

    .line 129
    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoader;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 137
    .line 138
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 139
    .line 140
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwww()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 145
    .line 146
    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 151
    .line 152
    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/Options;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-interface {v0, v1, v3, v5, v6}, Lcom/bumptech/glide/load/model/ModelLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 161
    .line 162
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 163
    .line 164
    if-eqz v0, :cond_4

    .line 165
    .line 166
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 167
    .line 168
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 169
    .line 170
    iget-object v1, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 171
    .line 172
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwww(Ljava/lang/Class;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_4

    .line 181
    .line 182
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 183
    .line 184
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 185
    .line 186
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/Priority;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/data/DataFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    .line 194
    .line 195
    move v2, v4

    .line 196
    goto :goto_1

    .line 197
    :cond_5
    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 198
    .line 199
    .line 200
    return v2

    .line 201
    :cond_6
    :goto_2
    :try_start_3
    iget v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 202
    .line 203
    add-int/2addr v3, v4

    .line 204
    iput v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 205
    .line 206
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    if-lt v3, v5, :cond_8

    .line 211
    .line 212
    iget v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 213
    .line 214
    add-int/2addr v3, v4

    .line 215
    iput v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 216
    .line 217
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 218
    .line 219
    .line 220
    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    if-lt v3, v4, :cond_7

    .line 222
    .line 223
    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 224
    .line 225
    .line 226
    return v2

    .line 227
    :cond_7
    :try_start_4
    iput v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 228
    .line 229
    :cond_8
    iget v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 230
    .line 231
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    move-object v6, v3

    .line 236
    check-cast v6, Lcom/bumptech/glide/load/Key;

    .line 237
    .line 238
    iget v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 239
    .line 240
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    move-object v11, v3

    .line 245
    check-cast v11, Ljava/lang/Class;

    .line 246
    .line 247
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 248
    .line 249
    invoke-virtual {v3, v11}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwww(Ljava/lang/Class;)Lcom/bumptech/glide/load/Transformation;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    new-instance v4, Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    .line 254
    .line 255
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 256
    .line 257
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 262
    .line 263
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/Key;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 268
    .line 269
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwww()I

    .line 270
    .line 271
    .line 272
    move-result v8

    .line 273
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 274
    .line 275
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 276
    .line 277
    .line 278
    move-result v9

    .line 279
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 280
    .line 281
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/Options;

    .line 282
    .line 283
    .line 284
    move-result-object v12

    .line 285
    invoke-direct/range {v4 .. v12}, Lcom/bumptech/glide/load/engine/ResourceCacheKey;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/Transformation;Ljava/lang/Class;Lcom/bumptech/glide/load/Options;)V

    .line 286
    .line 287
    .line 288
    iput-object v4, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    .line 289
    .line 290
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 291
    .line 292
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    .line 297
    .line 298
    invoke-interface {v3, v4}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/Key;)Ljava/io/File;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    iput-object v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 303
    .line 304
    if-eqz v3, :cond_2

    .line 305
    .line 306
    iput-object v6, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/Key;

    .line 307
    .line 308
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 309
    .line 310
    invoke-virtual {v4, v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    iput-object v3, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 315
    .line 316
    iput v2, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwwww:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 317
    .line 318
    goto/16 :goto_0

    .line 319
    .line 320
    :goto_3
    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 321
    .line 322
    .line 323
    throw v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;->Wwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
