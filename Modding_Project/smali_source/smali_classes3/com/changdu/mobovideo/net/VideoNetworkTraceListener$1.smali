.class Lcom/changdu/mobovideo/net/VideoNetworkTraceListener$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokhttp3/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 2

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;

    .line 2
    .line 3
    invoke-interface {p1}, Lokhttp3/Call;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p1, v1}, Lcom/changdu/mobovideo/net/VideoNetworkTraceListener;-><init>(Lokhttp3/HttpUrl;Lcom/changdu/mobovideo/net/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
