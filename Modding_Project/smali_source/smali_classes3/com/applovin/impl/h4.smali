.class public abstract Lcom/applovin/impl/h4;
.super Landroid/webkit/WebViewClient;
.source "Proguard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 4

    .line 1
    const-string p1, "top_main_method"

    .line 2
    .line 3
    const-string v0, "onRenderProcessGone"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/applovin/impl/h4;->a()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/applovin/impl/k0;->g()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {p2}, Lcom/applovin/impl/adview/Wwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const-string v0, "crash"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v0, "non_crash"

    .line 32
    .line 33
    :goto_0
    const-string v1, "source"

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "renderer_priority_at_exit="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Lcom/applovin/impl/Kkkkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/webkit/RenderProcessGoneDetail;)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const-string v0, "details"

    .line 60
    .line 61
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_1
    sget-object p2, Lcom/applovin/impl/sdk/k;->C0:Lcom/applovin/impl/sdk/k;

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    sget-object v0, Lcom/applovin/impl/l4;->i3:Lcom/applovin/impl/l4;

    .line 69
    .line 70
    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Ljava/lang/Long;

    .line 75
    .line 76
    sget-object v0, Lcom/applovin/impl/sdk/k;->C0:Lcom/applovin/impl/sdk/k;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/m1;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v1, Lcom/applovin/impl/y1;->D0:Lcom/applovin/impl/y1;

    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/applovin/impl/z1;->a(Lcom/applovin/impl/y1;Ljava/util/Map;J)V

    .line 89
    .line 90
    .line 91
    :cond_2
    const-string p1, "RenderProcessGoneHandlingWebViewClient"

    .line 92
    .line 93
    const-string p2, "onRenderProcessGone() handled"

    .line 94
    .line 95
    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/4 p1, 0x1

    .line 99
    return p1
.end method
