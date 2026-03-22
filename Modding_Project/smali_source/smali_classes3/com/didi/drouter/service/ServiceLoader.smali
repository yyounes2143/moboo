.class public Lcom/didi/drouter/service/ServiceLoader;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/service/ServiceAgent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/drouter/service/ServiceAgent<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/didi/drouter/service/ServiceAgent;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/didi/drouter/service/ServiceAgent;-><init>(Ljava/lang/Class;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/didi/drouter/service/ServiceLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/service/ServiceAgent;

    .line 10
    .line 11
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Lcom/didi/drouter/service/ServiceLoader;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/didi/drouter/service/ServiceLoader<",
            "TT;>;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/didi/drouter/service/ServiceLoader;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/didi/drouter/service/ServiceLoader;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    const-string v0, "DRouter function class can\'t be null"

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method


# virtual methods
.method public varargs Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/service/ServiceLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/service/ServiceAgent;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public varargs Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/service/ServiceLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/service/ServiceAgent;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/didi/drouter/service/ServiceAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
