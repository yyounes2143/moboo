.class public final Lcom/bumptech/glide/GlideBuilder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/GlideBuilder$UseDirectResourceLoader;,
        Lcom/bumptech/glide/GlideBuilder$LogRequestOrigins;,
        Lcom/bumptech/glide/GlideBuilder$EnableImageDecoderForBitmaps;,
        Lcom/bumptech/glide/GlideBuilder$WaitForFramesAfterTrimMemory;,
        Lcom/bumptech/glide/GlideBuilder$ManualOverrideHardwareBitmapMaxFdCount;
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field public Wwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

.field public Wwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Engine;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/GlideExperiments$Builder;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/TransitionOptions<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Lcom/bumptech/glide/GlideExperiments$Builder;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/bumptech/glide/GlideExperiments$Builder;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/GlideExperiments$Builder;

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    iput v0, p0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 20
    .line 21
    new-instance v0, Lcom/bumptech/glide/GlideBuilder$1;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/bumptech/glide/GlideBuilder$1;-><init>(Lcom/bumptech/glide/GlideBuilder;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    .line 2
    .line 3
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;)Lcom/bumptech/glide/Glide;
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/module/GlideModule;",
            ">;",
            "Lcom/bumptech/glide/module/AppGlideModule;",
            ")",
            "Lcom/bumptech/glide/Glide;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 14
    .line 15
    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 24
    .line 25
    :cond_1
    iget-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 34
    .line 35
    :cond_2
    iget-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    .line 40
    .line 41
    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 49
    .line 50
    :cond_3
    iget-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    .line 51
    .line 52
    if-nez v1, :cond_4

    .line 53
    .line 54
    new-instance v1, Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;

    .line 55
    .line 56
    invoke-direct {v1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    .line 60
    .line 61
    :cond_4
    iget-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 62
    .line 63
    if-nez v1, :cond_6

    .line 64
    .line 65
    iget-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-lez v1, :cond_5

    .line 72
    .line 73
    new-instance v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    .line 74
    .line 75
    int-to-long v4, v1

    .line 76
    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(J)V

    .line 77
    .line 78
    .line 79
    iput-object v3, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;

    .line 83
    .line 84
    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 88
    .line 89
    :cond_6
    :goto_0
    iget-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 90
    .line 91
    if-nez v1, :cond_7

    .line 92
    .line 93
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 94
    .line 95
    iget-object v3, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-direct {v1, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;-><init>(I)V

    .line 102
    .line 103
    .line 104
    iput-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 105
    .line 106
    :cond_7
    iget-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 107
    .line 108
    if-nez v1, :cond_8

    .line 109
    .line 110
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    .line 111
    .line 112
    iget-object v3, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    int-to-long v3, v3

    .line 119
    invoke-direct {v1, v3, v4}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;-><init>(J)V

    .line 120
    .line 121
    .line 122
    iput-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 123
    .line 124
    :cond_8
    iget-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 125
    .line 126
    if-nez v1, :cond_9

    .line 127
    .line 128
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;

    .line 129
    .line 130
    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    iput-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 134
    .line 135
    :cond_9
    iget-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Engine;

    .line 136
    .line 137
    if-nez v1, :cond_a

    .line 138
    .line 139
    new-instance v3, Lcom/bumptech/glide/load/engine/Engine;

    .line 140
    .line 141
    iget-object v4, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 142
    .line 143
    iget-object v5, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 144
    .line 145
    iget-object v6, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 146
    .line 147
    iget-object v7, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 148
    .line 149
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    iget-object v9, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 154
    .line 155
    iget-boolean v10, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwww:Z

    .line 156
    .line 157
    invoke-direct/range {v3 .. v10}, Lcom/bumptech/glide/load/engine/Engine;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Z)V

    .line 158
    .line 159
    .line 160
    iput-object v3, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Engine;

    .line 161
    .line 162
    :cond_a
    iget-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 163
    .line 164
    if-nez v1, :cond_b

    .line 165
    .line 166
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 167
    .line 168
    iput-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    iput-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 176
    .line 177
    :goto_1
    iget-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/GlideExperiments$Builder;

    .line 178
    .line 179
    invoke-virtual {v1}, Lcom/bumptech/glide/GlideExperiments$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/GlideExperiments;

    .line 180
    .line 181
    .line 182
    move-result-object v15

    .line 183
    new-instance v7, Lcom/bumptech/glide/manager/RequestManagerRetriever;

    .line 184
    .line 185
    iget-object v1, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    .line 186
    .line 187
    invoke-direct {v7, v1, v15}, Lcom/bumptech/glide/manager/RequestManagerRetriever;-><init>(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;Lcom/bumptech/glide/GlideExperiments;)V

    .line 188
    .line 189
    .line 190
    new-instance v1, Lcom/bumptech/glide/Glide;

    .line 191
    .line 192
    iget-object v3, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Engine;

    .line 193
    .line 194
    iget-object v4, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 195
    .line 196
    iget-object v5, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 197
    .line 198
    iget-object v6, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 199
    .line 200
    iget-object v8, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    .line 201
    .line 202
    iget v9, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 203
    .line 204
    iget-object v10, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

    .line 205
    .line 206
    iget-object v11, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 207
    .line 208
    iget-object v12, v0, Lcom/bumptech/glide/GlideBuilder;->Wwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 209
    .line 210
    move-object/from16 v13, p2

    .line 211
    .line 212
    move-object/from16 v14, p3

    .line 213
    .line 214
    invoke-direct/range {v1 .. v15}, Lcom/bumptech/glide/Glide;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/manager/RequestManagerRetriever;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;ILcom/bumptech/glide/Glide$RequestOptionsFactory;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;Lcom/bumptech/glide/GlideExperiments;)V

    .line 215
    .line 216
    .line 217
    return-object v1
.end method
