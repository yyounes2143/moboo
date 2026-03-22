.class public Lcom/applovin/impl/i2;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ImageView;

.field private e:Lcom/applovin/impl/j2;

.field private f:I


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
.method public a()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/applovin/impl/i2;->f:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/applovin/impl/i2;->f:I

    return-void
.end method

.method public a(Lcom/applovin/impl/j2;)V
    .locals 5

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/i2;->e:Lcom/applovin/impl/j2;

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/i2;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/applovin/impl/j2;->k()Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/i2;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/applovin/impl/j2;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/i2;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/applovin/impl/j2;->f()Landroid/text/SpannedString;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/applovin/impl/i2;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 9
    iget-object v0, p0, Lcom/applovin/impl/i2;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/applovin/impl/i2;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/applovin/impl/j2;->f()Landroid/text/SpannedString;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/applovin/impl/i2;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/applovin/impl/j2;->g()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    invoke-virtual {p1}, Lcom/applovin/impl/j2;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/applovin/impl/i2;->b:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/i2;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/i2;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/applovin/impl/j2;->h()I

    move-result v0

    if-lez v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/applovin/impl/i2;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/applovin/impl/j2;->h()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    iget-object v0, p0, Lcom/applovin/impl/i2;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/applovin/impl/j2;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 19
    iget-object v0, p0, Lcom/applovin/impl/i2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/i2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/i2;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {p1}, Lcom/applovin/impl/j2;->d()I

    move-result v0

    if-lez v0, :cond_4

    .line 23
    iget-object v0, p0, Lcom/applovin/impl/i2;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/applovin/impl/j2;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    iget-object v0, p0, Lcom/applovin/impl/i2;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/applovin/impl/j2;->e()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 25
    iget-object p1, p0, Lcom/applovin/impl/i2;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/applovin/impl/i2;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public b()Lcom/applovin/impl/j2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/i2;->e:Lcom/applovin/impl/j2;

    .line 2
    .line 3
    return-object v0
.end method
