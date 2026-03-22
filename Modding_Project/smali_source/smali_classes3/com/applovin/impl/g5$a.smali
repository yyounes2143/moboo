.class Lcom/applovin/impl/g5$a;
.super Lcom/applovin/impl/z5;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/g5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic m:Lcom/applovin/impl/g5;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/g5;Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/g5$a;->m:Lcom/applovin/impl/g5;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/z5;-><init>(Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/k;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/applovin/impl/g5$a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/w4;->c:Lcom/applovin/impl/sdk/o;

    iget-object p4, p0, Lcom/applovin/impl/w4;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to fetch app-ads.txt due to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", and received error code: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/g5$a;->m:Lcom/applovin/impl/g5;

    invoke-static {p1}, Lcom/applovin/impl/g5;->b(Lcom/applovin/impl/g5;)Lcom/applovin/impl/g5$b;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/a0$b;->c:Lcom/applovin/impl/a0$b;

    iget-object p3, p0, Lcom/applovin/impl/g5$a;->m:Lcom/applovin/impl/g5;

    invoke-static {p3}, Lcom/applovin/impl/g5;->a(Lcom/applovin/impl/g5;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/applovin/impl/g5$b;->a(Lcom/applovin/impl/a0$b;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/impl/g5$a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/w4;->c:Lcom/applovin/impl/sdk/o;

    iget-object p2, p0, Lcom/applovin/impl/w4;->b:Ljava/lang/String;

    const-string p3, "No app-ads.txt found"

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/g5$a;->m:Lcom/applovin/impl/g5;

    invoke-static {p1}, Lcom/applovin/impl/g5;->b(Lcom/applovin/impl/g5;)Lcom/applovin/impl/g5$b;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/a0$b;->c:Lcom/applovin/impl/a0$b;

    iget-object p3, p0, Lcom/applovin/impl/g5$a;->m:Lcom/applovin/impl/g5;

    invoke-static {p3}, Lcom/applovin/impl/g5;->a(Lcom/applovin/impl/g5;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/applovin/impl/g5$b;->a(Lcom/applovin/impl/a0$b;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/w4;->c:Lcom/applovin/impl/sdk/o;

    iget-object p3, p0, Lcom/applovin/impl/w4;->b:Ljava/lang/String;

    const-string v0, "Found app-ads.txt"

    invoke-virtual {p1, p3, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/g5$a;->m:Lcom/applovin/impl/g5;

    invoke-static {p1}, Lcom/applovin/impl/g5;->b(Lcom/applovin/impl/g5;)Lcom/applovin/impl/g5$b;

    move-result-object p1

    iget-object p3, p0, Lcom/applovin/impl/g5$a;->m:Lcom/applovin/impl/g5;

    invoke-static {p3}, Lcom/applovin/impl/g5;->a(Lcom/applovin/impl/g5;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/applovin/impl/g5$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
