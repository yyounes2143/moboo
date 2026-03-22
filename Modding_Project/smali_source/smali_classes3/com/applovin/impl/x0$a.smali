.class Lcom/applovin/impl/x0$a;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/applovin/impl/k2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/x0;->a(Lcom/applovin/impl/y0;Lcom/applovin/impl/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/c;

.field final synthetic b:Lcom/applovin/impl/x0;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/x0;Lcom/applovin/impl/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/x0$a;->b:Lcom/applovin/impl/x0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/impl/x0$a;->a:Lcom/applovin/impl/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/d2;Lcom/applovin/impl/j2;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/applovin/impl/d2;->b()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    sget-object v0, Lcom/applovin/impl/y0$a;->a:Lcom/applovin/impl/y0$a;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eq p2, v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/x0$a;->b:Lcom/applovin/impl/x0;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/applovin/impl/x0$a;->a:Lcom/applovin/impl/c;

    .line 17
    .line 18
    new-instance v1, Lcom/applovin/impl/x0$a$a;

    .line 19
    .line 20
    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/x0$a$a;-><init>(Lcom/applovin/impl/x0$a;Lcom/applovin/impl/d2;)V

    .line 21
    .line 22
    .line 23
    const-class p1, Lcom/applovin/creative/MaxCreativeDebuggerDisplayedAdActivity;

    .line 24
    .line 25
    invoke-static {p2, p1, v0, v1}, Lcom/applovin/impl/d;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/c;Lcom/applovin/impl/d$b;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
