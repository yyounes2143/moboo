.class Lcom/bumptech/glide/load/engine/SourceGenerator;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator;
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;


# instance fields
.field public volatile Wwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataCacheKey;

.field public volatile Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;"
        }
    .end annotation
.end field

.field public volatile Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

.field public volatile Wwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataCacheGenerator;

.field public volatile Wwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeHelper<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V
    .locals 0
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
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/Priority;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lcom/bumptech/glide/load/engine/SourceGenerator$1;

    .line 12
    .line 13
    invoke-direct {v2, p0, p1}, Lcom/bumptech/glide/load/engine/SourceGenerator$1;-><init>(Lcom/bumptech/glide/load/engine/SourceGenerator;Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/data/DataFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;Ljava/lang/Exception;)V
    .locals 3
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/DataSource;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v0, v1, p2, p1, v2}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object v1, p1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/DataSource;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/DataSource;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 30
    .line 31
    iget-object v1, p1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/Key;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 34
    .line 35
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/DataFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/DataSource;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 40
    .line 41
    move-object v2, p2

    .line 42
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/Key;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 2
    .line 3
    iget-object p4, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 4
    .line 5
    iget-object p4, p4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 6
    .line 7
    invoke-interface {p4}, Lcom/bumptech/glide/load/data/DataFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/DataSource;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    move-object v5, p1

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p2

    .line 14
    move-object v3, p3

    .line 15
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "SourceGenerator"

    .line 2
    .line 3
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 9
    .line 10
    invoke-virtual {v4, p1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/DataRewinder;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-interface {v4}, Lcom/bumptech/glide/load/data/DataRewinder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 19
    .line 20
    invoke-virtual {v6, v5}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Lcom/bumptech/glide/load/Encoder;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    new-instance v7, Lcom/bumptech/glide/load/engine/DataCacheWriter;

    .line 25
    .line 26
    iget-object v8, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 27
    .line 28
    invoke-virtual {v8}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/Options;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-direct {v7, v6, v5, v8}, Lcom/bumptech/glide/load/engine/DataCacheWriter;-><init>(Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)V

    .line 33
    .line 34
    .line 35
    new-instance v5, Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 36
    .line 37
    iget-object v8, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 38
    .line 39
    iget-object v8, v8, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/Key;

    .line 40
    .line 41
    iget-object v9, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 42
    .line 43
    invoke-virtual {v9}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/Key;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-direct {v5, v8, v9}, Lcom/bumptech/glide/load/engine/DataCacheKey;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;)V

    .line 48
    .line 49
    .line 50
    iget-object v8, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 51
    .line 52
    invoke-virtual {v8}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-interface {v8, v5, v7}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V

    .line 57
    .line 58
    .line 59
    const/4 v7, 0x2

    .line 60
    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_0

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-static {v6}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/LogTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)D

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    move-object p1, v0

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    :goto_0
    invoke-interface {v8, v5}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/Key;)Ljava/io/File;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const/4 v2, 0x1

    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    iput-object v5, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 90
    .line 91
    new-instance p1, Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/Key;

    .line 96
    .line 97
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 102
    .line 103
    invoke-direct {p1, v0, v1, p0}, Lcom/bumptech/glide/load/engine/DataCacheGenerator;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataCacheGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 111
    .line 112
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 113
    .line 114
    .line 115
    return v2

    .line 116
    :cond_1
    const/4 v1, 0x3

    .line 117
    :try_start_1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 124
    .line 125
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .line 130
    .line 131
    :cond_2
    move-object p1, v4

    .line 132
    :try_start_2
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 133
    .line 134
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 135
    .line 136
    iget-object v5, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/Key;

    .line 137
    .line 138
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataRewinder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 143
    .line 144
    iget-object v7, p1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 145
    .line 146
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 147
    .line 148
    iget-object p1, p1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 149
    .line 150
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/DataSource;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 155
    .line 156
    iget-object v9, p1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/Key;

    .line 157
    .line 158
    invoke-interface/range {v4 .. v9}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    .line 160
    .line 161
    return v3

    .line 162
    :catchall_1
    move-exception v0

    .line 163
    move-object p1, v0

    .line 164
    move v3, v2

    .line 165
    :goto_1
    if-nez v3, :cond_3

    .line 166
    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 170
    .line 171
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 172
    .line 173
    .line 174
    :cond_3
    throw p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return v2

    .line 18
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    return v2

    .line 31
    :cond_1
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget v3, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 51
    .line 52
    add-int/lit8 v4, v3, 0x1

    .line 53
    .line 54
    iput v4, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 55
    .line 56
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 61
    .line 62
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 75
    .line 76
    iget-object v3, v3, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 77
    .line 78
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/DataFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/DataSource;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/DataSource;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_3

    .line 87
    .line 88
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 89
    .line 90
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 91
    .line 92
    iget-object v3, v3, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 93
    .line 94
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/DataFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->Wwwwwwwwwwwwww(Ljava/lang/Class;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)V

    .line 107
    .line 108
    .line 109
    move v0, v2

    .line 110
    goto :goto_0

    .line 111
    :cond_4
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/DataSource;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p4, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

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
