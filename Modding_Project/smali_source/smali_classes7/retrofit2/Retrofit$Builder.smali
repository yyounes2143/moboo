.class public final Lretrofit2/Retrofit$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/Retrofit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lretrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/HttpUrl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Call$Factory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lretrofit2/Platform;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-static {}, Lretrofit2/Platform;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lretrofit2/Platform;

    move-result-object v0

    invoke-direct {p0, v0}, Lretrofit2/Retrofit$Builder;-><init>(Lretrofit2/Platform;)V

    return-void
.end method

.method public constructor <init>(Lretrofit2/Platform;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lretrofit2/Platform;

    return-void
.end method

.method public constructor <init>(Lretrofit2/Retrofit;)V
    .locals 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 9
    invoke-static {}, Lretrofit2/Platform;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lretrofit2/Platform;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lretrofit2/Platform;

    .line 10
    iget-object v1, p1, Lretrofit2/Retrofit;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Call$Factory;

    iput-object v1, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Call$Factory;

    .line 11
    iget-object v1, p1, Lretrofit2/Retrofit;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/HttpUrl;

    iput-object v1, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/HttpUrl;

    .line 12
    iget-object v1, p1, Lretrofit2/Retrofit;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lretrofit2/Platform;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 13
    iget-object v2, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    iget-object v3, p1, Lretrofit2/Retrofit;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lretrofit2/Converter$Factory;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p1, Lretrofit2/Retrofit;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lretrofit2/Platform;

    invoke-virtual {v1}, Lretrofit2/Platform;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 16
    iget-object v2, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    iget-object v3, p1, Lretrofit2/Retrofit;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lretrofit2/CallAdapter$Factory;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p1, Lretrofit2/Retrofit;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/Executor;

    .line 18
    iget-boolean p1, p1, Lretrofit2/Retrofit;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    iput-boolean p1, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lretrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;
    .locals 1

    .line 1
    const-string v0, "client == null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast p1, Lokhttp3/Call$Factory;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call$Factory;)Lretrofit2/Retrofit$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call$Factory;)Lretrofit2/Retrofit$Builder;
    .locals 1

    .line 1
    const-string v0, "factory == null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast p1, Lokhttp3/Call$Factory;

    .line 7
    .line 8
    iput-object p1, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Call$Factory;

    .line 9
    .line 10
    return-object p0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lretrofit2/Retrofit;
    .locals 8

    .line 1
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/HttpUrl;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Call$Factory;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 10
    .line 11
    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 12
    .line 13
    .line 14
    :cond_0
    move-object v2, v0

    .line 15
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lretrofit2/Platform;

    .line 20
    .line 21
    invoke-virtual {v0}, Lretrofit2/Platform;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    move-object v6, v0

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v1, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lretrofit2/Platform;

    .line 34
    .line 35
    invoke-virtual {v1, v6}, Lretrofit2/Platform;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/concurrent/Executor;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    iget-object v3, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    iget-object v4, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lretrofit2/Platform;

    .line 53
    .line 54
    invoke-virtual {v4}, Lretrofit2/Platform;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    add-int/2addr v3, v4

    .line 59
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    new-instance v3, Lretrofit2/BuiltInConverters;

    .line 63
    .line 64
    invoke-direct {v3}, Lretrofit2/BuiltInConverters;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lretrofit2/Platform;

    .line 76
    .line 77
    invoke-virtual {v3}, Lretrofit2/Platform;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    move-object v3, v1

    .line 85
    new-instance v1, Lretrofit2/Retrofit;

    .line 86
    .line 87
    move-object v4, v3

    .line 88
    iget-object v3, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/HttpUrl;

    .line 89
    .line 90
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    iget-boolean v7, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 99
    .line 100
    invoke-direct/range {v1 .. v7}, Lretrofit2/Retrofit;-><init>(Lokhttp3/Call$Factory;Lokhttp3/HttpUrl;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V

    .line 101
    .line 102
    .line 103
    return-object v1

    .line 104
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 105
    .line 106
    const-string v1, "Base URL required."

    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;
    .locals 3

    .line 1
    const-string v0, "baseUrl == null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, ""

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iput-object p1, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/HttpUrl;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "baseUrl must end in /: "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;
    .locals 1

    .line 1
    const-string v0, "baseUrl == null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    const-string v1, "factory == null"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
