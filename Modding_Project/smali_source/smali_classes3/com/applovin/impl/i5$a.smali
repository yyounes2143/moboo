.class Lcom/applovin/impl/i5$a;
.super Lcom/applovin/impl/z5;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/i5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic m:Lcom/applovin/impl/i5;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/i5;Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/i5$a;->m:Lcom/applovin/impl/i5;

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

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/applovin/impl/i5$a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 16
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/w4;->c:Lcom/applovin/impl/sdk/o;

    iget-object p4, p0, Lcom/applovin/impl/w4;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to fetch app details due to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", and received error code: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/i5$a;->m:Lcom/applovin/impl/i5;

    invoke-static {p1}, Lcom/applovin/impl/i5;->a(Lcom/applovin/impl/i5;)Lcom/applovin/impl/i5$b;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/a0$b;->a:Lcom/applovin/impl/a0$b;

    invoke-interface {p1, p2}, Lcom/applovin/impl/i5$b;->a(Lcom/applovin/impl/a0$b;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/impl/i5$a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

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

    const-string p3, "No developer URI found - response from the Play Store is empty"

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/i5$a;->m:Lcom/applovin/impl/i5;

    invoke-static {p1}, Lcom/applovin/impl/i5;->a(Lcom/applovin/impl/i5;)Lcom/applovin/impl/i5$b;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/a0$b;->a:Lcom/applovin/impl/a0$b;

    invoke-interface {p1, p2}, Lcom/applovin/impl/i5$b;->a(Lcom/applovin/impl/a0$b;)V

    return-void

    .line 6
    :cond_1
    const-string p1, "(?<=\"appstore:developer_url\" content=\").*?(?=\">)"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-nez p2, :cond_3

    .line 8
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/w4;->c:Lcom/applovin/impl/sdk/o;

    iget-object p2, p0, Lcom/applovin/impl/w4;->b:Ljava/lang/String;

    const-string p3, "No developer URI found - unable to find the developer_url meta tag from the Play Store listing"

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/i5$a;->m:Lcom/applovin/impl/i5;

    invoke-static {p1}, Lcom/applovin/impl/i5;->a(Lcom/applovin/impl/i5;)Lcom/applovin/impl/i5$b;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/a0$b;->b:Lcom/applovin/impl/a0$b;

    invoke-interface {p1, p2}, Lcom/applovin/impl/i5$b;->a(Lcom/applovin/impl/a0$b;)V

    return-void

    .line 10
    :cond_3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 12
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/applovin/impl/w4;->c:Lcom/applovin/impl/sdk/o;

    iget-object p3, p0, Lcom/applovin/impl/w4;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Developer URI ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not valid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/applovin/impl/i5$a;->m:Lcom/applovin/impl/i5;

    invoke-static {p1}, Lcom/applovin/impl/i5;->a(Lcom/applovin/impl/i5;)Lcom/applovin/impl/i5$b;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/a0$b;->b:Lcom/applovin/impl/a0$b;

    invoke-interface {p1, p2}, Lcom/applovin/impl/i5$b;->a(Lcom/applovin/impl/a0$b;)V

    return-void

    .line 14
    :cond_5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/applovin/impl/w4;->c:Lcom/applovin/impl/sdk/o;

    iget-object p3, p0, Lcom/applovin/impl/w4;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found developer URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_6
    iget-object p2, p0, Lcom/applovin/impl/i5$a;->m:Lcom/applovin/impl/i5;

    invoke-static {p2}, Lcom/applovin/impl/i5;->a(Lcom/applovin/impl/i5;)Lcom/applovin/impl/i5$b;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/applovin/impl/i5$b;->a(Ljava/lang/String;)V

    return-void
.end method
