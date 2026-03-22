.class Lcom/applovin/impl/d6$a;
.super Lcom/applovin/impl/z5;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/d6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic m:Lcom/applovin/impl/d6;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/d6;Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/d6$a;->m:Lcom/applovin/impl/d6;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/z5;-><init>(Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/k;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;Lcom/applovin/impl/b8;)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/w4;->c:Lcom/applovin/impl/sdk/o;

    iget-object p3, p0, Lcom/applovin/impl/w4;->b:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to resolve VAST wrapper. Server returned "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/d6$a;->m:Lcom/applovin/impl/d6;

    invoke-static {p1, p2}, Lcom/applovin/impl/d6;->a(Lcom/applovin/impl/d6;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p4, Lcom/applovin/impl/b8;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/applovin/impl/d6$a;->a(Ljava/lang/String;ILjava/lang/String;Lcom/applovin/impl/b8;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/applovin/impl/b8;I)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/d6$a;->m:Lcom/applovin/impl/d6;

    invoke-static {p1}, Lcom/applovin/impl/d6;->a(Lcom/applovin/impl/d6;)Lcom/applovin/impl/e7;

    move-result-object p1

    iget-object p3, p0, Lcom/applovin/impl/d6$a;->m:Lcom/applovin/impl/d6;

    invoke-static {p3}, Lcom/applovin/impl/d6;->b(Lcom/applovin/impl/d6;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object p3

    iget-object v0, p0, Lcom/applovin/impl/d6$a;->m:Lcom/applovin/impl/d6;

    iget-object v0, v0, Lcom/applovin/impl/w4;->a:Lcom/applovin/impl/sdk/k;

    invoke-static {p2, p1, p3, v0}, Lcom/applovin/impl/v5;->a(Lcom/applovin/impl/b8;Lcom/applovin/impl/e7;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/k;)Lcom/applovin/impl/v5;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/applovin/impl/w4;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->q0()Lcom/applovin/impl/r5;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/w4;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p2, Lcom/applovin/impl/b8;

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/impl/d6$a;->a(Ljava/lang/String;Lcom/applovin/impl/b8;I)V

    return-void
.end method
