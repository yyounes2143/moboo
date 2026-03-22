.class public Lcom/applovin/impl/u0;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/k;

.field private final b:I

.field private c:Ljava/util/List;

.field private d:Ljava/lang/String;

.field private e:Lcom/applovin/impl/q0;

.field private f:Lcom/applovin/impl/p0$c;

.field private g:Lcom/applovin/impl/q0;

.field private h:Landroid/app/Dialog;

.field private i:Lcom/applovin/impl/p0$b;

.field private final j:Lcom/applovin/impl/b;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/applovin/impl/p0$b;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/applovin/impl/p0$b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/applovin/impl/u0;->i:Lcom/applovin/impl/p0$b;

    .line 10
    .line 11
    new-instance v0, Lcom/applovin/impl/u0$a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/applovin/impl/u0$a;-><init>(Lcom/applovin/impl/u0;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/applovin/impl/u0;->j:Lcom/applovin/impl/b;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    .line 19
    .line 20
    sget-object v0, Lcom/applovin/impl/l4;->s6:Lcom/applovin/impl/l4;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/applovin/impl/u0;->b:I

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/u0;Landroid/app/AlertDialog;Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/u0;->a(Landroid/app/AlertDialog;Landroid/app/Activity;Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/u0;Lcom/applovin/impl/q0;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/q0;Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a(Landroid/app/Dialog;)Landroid/app/Activity;
    .locals 1

    .line 131
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 132
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 133
    check-cast p1, Landroid/app/Activity;

    return-object p1

    .line 134
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 135
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 136
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 137
    check-cast p1, Landroid/app/Activity;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic a(Lcom/applovin/impl/u0;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/applovin/impl/u0;->h:Landroid/app/Dialog;

    return-object p1
.end method

.method private a(I)Lcom/applovin/impl/q0;
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/applovin/impl/u0;->c:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 129
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/q0;

    .line 130
    invoke-virtual {v2}, Lcom/applovin/impl/q0;->b()I

    move-result v3

    if-ne p1, v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public static synthetic a(Lcom/applovin/impl/u0;)Lcom/applovin/impl/q0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/u0;->g:Lcom/applovin/impl/q0;

    return-object p0
.end method

.method public static synthetic a(Lcom/applovin/impl/u0;I)Lcom/applovin/impl/q0;
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/applovin/impl/u0;->a(I)Lcom/applovin/impl/q0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/applovin/impl/u0;Lcom/applovin/impl/q0;)Lcom/applovin/impl/q0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/u0;->g:Lcom/applovin/impl/q0;

    return-object p1
.end method

.method private synthetic a(Landroid/app/AlertDialog;Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .locals 2

    .line 112
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 113
    const-string v0, "android:id/alertTitle"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 114
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 115
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 116
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 117
    iget p3, p0, Lcom/applovin/impl/u0;->b:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p3, 0x30

    .line 118
    invoke-static {p2, p3}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMinHeight(I)V

    return-void
.end method

.method private a(Lcom/applovin/impl/q0;)V
    .locals 3

    .line 119
    new-instance v0, Lcom/applovin/impl/u0$h;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/u0$h;-><init>(Lcom/applovin/impl/u0;Lcom/applovin/impl/q0;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 120
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 121
    invoke-static {v0, v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/q0;Landroid/app/Activity;)V
    .locals 8

    if-nez p1, :cond_0

    .line 28
    const-string p1, "Consent flow state is null"

    invoke-direct {p0, p1}, Lcom/applovin/impl/u0;->a(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transitioning to state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConsentFlowStateMachine"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/q0;->c()Lcom/applovin/impl/q0$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/q0$b;->a:Lcom/applovin/impl/q0$b;

    const-string v2, "cf_start"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_9

    .line 31
    invoke-static {p2}, Lcom/applovin/impl/d;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    invoke-direct {p0, p1}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/q0;)V

    return-void

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->G()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;)V

    .line 34
    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/r0;

    .line 35
    iput-object v0, p0, Lcom/applovin/impl/u0;->g:Lcom/applovin/impl/q0;

    .line 36
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 38
    invoke-virtual {v0}, Lcom/applovin/impl/r0;->d()Ljava/util/List;

    move-result-object v2

    .line 39
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/s0;

    .line 40
    new-instance v5, Lcom/applovin/impl/u0$b;

    invoke-direct {v5, p0, v3, p1, p2}, Lcom/applovin/impl/u0$b;-><init>(Lcom/applovin/impl/u0;Lcom/applovin/impl/s0;Lcom/applovin/impl/q0;Landroid/app/Activity;)V

    .line 41
    invoke-virtual {v3}, Lcom/applovin/impl/s0;->c()Lcom/applovin/impl/s0$a;

    move-result-object v6

    sget-object v7, Lcom/applovin/impl/s0$a;->b:Lcom/applovin/impl/s0$a;

    if-ne v6, v7, :cond_3

    .line 42
    invoke-virtual {v3}, Lcom/applovin/impl/s0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {v3}, Lcom/applovin/impl/s0;->c()Lcom/applovin/impl/s0$a;

    move-result-object v6

    sget-object v7, Lcom/applovin/impl/s0$a;->c:Lcom/applovin/impl/s0$a;

    if-ne v6, v7, :cond_4

    .line 44
    invoke-virtual {v3}, Lcom/applovin/impl/s0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 45
    :cond_4
    invoke-virtual {v3}, Lcom/applovin/impl/s0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 46
    :cond_5
    invoke-virtual {v0}, Lcom/applovin/impl/r0;->f()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 48
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 49
    sget v3, Lcom/applovin/sdk/R$string;->applovin_terms_of_service_text:I

    invoke-static {v3}, Lcom/applovin/impl/sdk/k;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    sget v5, Lcom/applovin/sdk/R$string;->applovin_privacy_policy_text:I

    invoke-static {v5}, Lcom/applovin/impl/sdk/k;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 51
    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 52
    invoke-static {p1, v6}, Lcom/applovin/impl/sdk/utils/StringUtils;->containsAtLeastOneSubstring(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 53
    iget-object p1, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/p0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/p0;->h()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 54
    new-instance v6, Lcom/applovin/impl/u0$c;

    invoke-direct {v6, p0, p1, p2}, Lcom/applovin/impl/u0$c;-><init>(Lcom/applovin/impl/u0;Landroid/net/Uri;Landroid/app/Activity;)V

    .line 55
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 56
    invoke-static {v2, p1, v6, v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Landroid/text/style/ClickableSpan;Z)V

    .line 57
    :cond_6
    iget-object p1, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/p0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/p0;->f()Landroid/net/Uri;

    move-result-object p1

    .line 58
    new-instance v3, Lcom/applovin/impl/u0$d;

    invoke-direct {v3, p0, p1, p2}, Lcom/applovin/impl/u0$d;-><init>(Lcom/applovin/impl/u0;Landroid/net/Uri;Landroid/app/Activity;)V

    .line 59
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 60
    invoke-static {v2, p1, v3, v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Landroid/text/style/ClickableSpan;Z)V

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    .line 61
    :cond_8
    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {v0}, Lcom/applovin/impl/r0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 64
    new-instance v0, Lcom/applovin/impl/Llll;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/Llll;-><init>(Lcom/applovin/impl/u0;Landroid/app/AlertDialog;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 65
    iput-object p1, p0, Lcom/applovin/impl/u0;->h:Landroid/app/Dialog;

    .line 66
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 67
    iget-object p1, p0, Lcom/applovin/impl/u0;->i:Lcom/applovin/impl/p0$b;

    invoke-virtual {p1}, Lcom/applovin/impl/p0$b;->d()V

    return-void

    .line 68
    :cond_9
    invoke-virtual {p1}, Lcom/applovin/impl/q0;->c()Lcom/applovin/impl/q0$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/q0$b;->b:Lcom/applovin/impl/q0$b;

    if-ne v0, v1, :cond_c

    .line 69
    iget-object v0, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/p0;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/p0;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 70
    invoke-static {p2}, Lcom/applovin/impl/d;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 71
    invoke-direct {p0, p1}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/q0;)V

    return-void

    .line 72
    :cond_a
    iget-object v0, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->t()Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/u0$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/u0$e;-><init>(Lcom/applovin/impl/u0;Lcom/applovin/impl/q0;Landroid/app/Activity;)V

    invoke-virtual {v0, p2, v1}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;->loadCmp(Landroid/app/Activity;Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$e;)V

    return-void

    .line 73
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/q0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void

    .line 74
    :cond_c
    invoke-virtual {p1}, Lcom/applovin/impl/q0;->c()Lcom/applovin/impl/q0$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/q0$b;->c:Lcom/applovin/impl/q0$b;

    if-ne v0, v1, :cond_e

    .line 75
    check-cast p1, Lcom/applovin/impl/t0;

    .line 76
    invoke-virtual {p1}, Lcom/applovin/impl/t0;->e()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Lcom/applovin/impl/t0;->d()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_d

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 79
    :cond_d
    const-string v2, "flow_type"

    const-string v3, "unified"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v2, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->G()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/u0;->b(Lcom/applovin/impl/q0;Landroid/app/Activity;)V

    return-void

    .line 82
    :cond_e
    invoke-virtual {p1}, Lcom/applovin/impl/q0;->c()Lcom/applovin/impl/q0$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/q0$b;->e:Lcom/applovin/impl/q0$b;

    if-ne v0, v1, :cond_11

    .line 83
    invoke-static {p2}, Lcom/applovin/impl/d;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 84
    invoke-direct {p0, p1}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/q0;)V

    return-void

    .line 85
    :cond_f
    iget-object v0, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/p0;->m()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 86
    iget-object v0, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->t()Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;->preloadCmp(Landroid/app/Activity;)V

    .line 87
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/q0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void

    .line 88
    :cond_10
    iget-object v0, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->t()Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/u0$f;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/u0$f;-><init>(Lcom/applovin/impl/u0;Lcom/applovin/impl/q0;Landroid/app/Activity;)V

    invoke-virtual {v0, p2, v1}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;->loadCmp(Landroid/app/Activity;Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$e;)V

    return-void

    .line 89
    :cond_11
    invoke-virtual {p1}, Lcom/applovin/impl/q0;->c()Lcom/applovin/impl/q0$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/q0$b;->f:Lcom/applovin/impl/q0$b;

    if-ne v0, v1, :cond_14

    .line 90
    invoke-static {p2}, Lcom/applovin/impl/d;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 91
    invoke-direct {p0, p1}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/q0;)V

    return-void

    .line 92
    :cond_12
    iget-object v0, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/p0;->m()Z

    move-result v0

    if-nez v0, :cond_13

    .line 93
    iget-object v0, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->G()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;)V

    .line 94
    :cond_13
    iget-object v0, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->t()Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/u0$g;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/u0$g;-><init>(Lcom/applovin/impl/u0;Lcom/applovin/impl/q0;Landroid/app/Activity;)V

    invoke-virtual {v0, p2, v1}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;->showCmp(Landroid/app/Activity;Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$f;)V

    return-void

    .line 95
    :cond_14
    invoke-virtual {p1}, Lcom/applovin/impl/q0;->c()Lcom/applovin/impl/q0$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/q0$b;->g:Lcom/applovin/impl/q0$b;

    if-ne v0, v1, :cond_1b

    .line 96
    invoke-virtual {p1}, Lcom/applovin/impl/q0;->a()Lcom/applovin/impl/q0$a;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/applovin/impl/q0$a;->c:Lcom/applovin/impl/q0$a;

    if-ne v0, v1, :cond_15

    .line 98
    iget-object v0, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/p0;->k()Z

    move-result v0

    .line 99
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/q0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void

    .line 100
    :cond_15
    sget-object v1, Lcom/applovin/impl/q0$a;->d:Lcom/applovin/impl/q0$a;

    if-ne v0, v1, :cond_18

    .line 101
    iget-object v0, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->z0()Z

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    sget-object v2, Lcom/applovin/impl/n4;->r:Lcom/applovin/impl/n4;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v5}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/n4;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    .line 103
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    move v3, v4

    .line 104
    :cond_17
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/q0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void

    .line 105
    :cond_18
    sget-object v1, Lcom/applovin/impl/q0$a;->e:Lcom/applovin/impl/q0$a;

    if-ne v0, v1, :cond_1a

    .line 106
    iget-object v0, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/p0;->h()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_19

    move v3, v4

    .line 107
    :cond_19
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/q0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void

    .line 108
    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid consent flow decision type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/u0;->a(Ljava/lang/String;)V

    return-void

    .line 109
    :cond_1b
    invoke-virtual {p1}, Lcom/applovin/impl/q0;->c()Lcom/applovin/impl/q0$b;

    move-result-object p2

    sget-object v0, Lcom/applovin/impl/q0$b;->d:Lcom/applovin/impl/q0$b;

    if-ne p2, v0, :cond_1c

    .line 110
    invoke-direct {p0}, Lcom/applovin/impl/u0;->b()V

    return-void

    .line 111
    :cond_1c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid consent flow destination state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/u0;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/q0;Landroid/app/Activity;Ljava/lang/Boolean;)V
    .locals 0

    .line 24
    invoke-virtual {p1, p3}, Lcom/applovin/impl/q0;->a(Ljava/lang/Boolean;)I

    move-result p3

    invoke-direct {p0, p3}, Lcom/applovin/impl/u0;->a(I)Lcom/applovin/impl/q0;

    move-result-object p3

    .line 25
    invoke-direct {p0, p1, p3, p2}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/q0;Lcom/applovin/impl/q0;Landroid/app/Activity;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/q0;Lcom/applovin/impl/q0;Landroid/app/Activity;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/applovin/impl/u0;->e:Lcom/applovin/impl/q0;

    .line 27
    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/u0;->c(Lcom/applovin/impl/q0;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/u0;Lcom/applovin/impl/q0;Landroid/app/Activity;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/u0;->b(Lcom/applovin/impl/q0;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/u0;Lcom/applovin/impl/q0;Landroid/app/Activity;Ljava/lang/Boolean;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/q0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/u0;Lcom/applovin/impl/q0;Lcom/applovin/impl/q0;Landroid/app/Activity;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/q0;Lcom/applovin/impl/q0;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/u0;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/applovin/impl/u0;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 122
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/applovin/impl/g1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last started states: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/u0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nLast successful state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/u0;->e:Lcom/applovin/impl/q0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "details"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/m1;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/y1;->r0:Lcom/applovin/impl/y1;

    invoke-virtual {v1, v2, p1, v0}, Lcom/applovin/impl/z1;->a(Lcom/applovin/impl/y1;Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    iget-object v0, p0, Lcom/applovin/impl/u0;->i:Lcom/applovin/impl/p0$b;

    if-eqz v0, :cond_0

    .line 126
    new-instance v1, Lcom/applovin/impl/o0;

    sget v2, Lcom/applovin/impl/o0;->e:I

    invoke-direct {v1, v2, p1}, Lcom/applovin/impl/o0;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/p0$b;->a(Lcom/applovin/impl/o0;)V

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/u0;->b()V

    return-void
.end method

.method public static synthetic b(Lcom/applovin/impl/u0;Landroid/app/Dialog;)Landroid/app/Activity;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/impl/u0;->a(Landroid/app/Dialog;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/applovin/impl/u0;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/u0;->h:Landroid/app/Dialog;

    return-object p0
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/applovin/impl/u0;->c:Ljava/util/List;

    .line 5
    iput-object v0, p0, Lcom/applovin/impl/u0;->e:Lcom/applovin/impl/q0;

    .line 6
    iget-object v1, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->e()Lcom/applovin/impl/c;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/u0;->j:Lcom/applovin/impl/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/c;->b(Lcom/applovin/impl/b;)V

    .line 7
    iget-object v1, p0, Lcom/applovin/impl/u0;->f:Lcom/applovin/impl/p0$c;

    if-eqz v1, :cond_0

    .line 8
    iget-object v2, p0, Lcom/applovin/impl/u0;->i:Lcom/applovin/impl/p0$b;

    invoke-interface {v1, v2}, Lcom/applovin/impl/p0$c;->a(Lcom/applovin/impl/p0$b;)V

    .line 9
    iput-object v0, p0, Lcom/applovin/impl/u0;->f:Lcom/applovin/impl/p0$c;

    .line 10
    :cond_0
    new-instance v0, Lcom/applovin/impl/p0$b;

    invoke-direct {v0}, Lcom/applovin/impl/p0$b;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/u0;->i:Lcom/applovin/impl/p0$b;

    return-void
.end method

.method private b(Lcom/applovin/impl/q0;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/q0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/applovin/impl/u0;)Lcom/applovin/impl/q0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/u0;->e:Lcom/applovin/impl/q0;

    return-object p0
.end method

.method private c(Lcom/applovin/impl/q0;Landroid/app/Activity;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/applovin/impl/Lll;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/Lll;-><init>(Lcom/applovin/impl/u0;Lcom/applovin/impl/q0;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Lcom/applovin/impl/u0;)Lcom/applovin/impl/sdk/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/applovin/impl/u0;)Lcom/applovin/impl/p0$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/u0;->i:Lcom/applovin/impl/p0$b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(ILandroid/app/Activity;Lcom/applovin/impl/p0$c;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/applovin/impl/u0;->c:Ljava/util/List;

    const-string v1, "ConsentFlowStateMachine"

    if-eqz v0, :cond_2

    .line 11
    iget-object p1, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to start states: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/u0;->c:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Consent flow already in progress for states: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/u0;->c:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    new-instance p1, Lcom/applovin/impl/o0;

    sget p2, Lcom/applovin/impl/o0;->d:I

    const-string v0, "Consent flow is already in progress."

    invoke-direct {p1, p2, v0}, Lcom/applovin/impl/o0;-><init>(ILjava/lang/String;)V

    .line 14
    new-instance p2, Lcom/applovin/impl/p0$b;

    invoke-direct {p2, p1}, Lcom/applovin/impl/p0$b;-><init>(Lcom/applovin/impl/o0;)V

    .line 15
    invoke-interface {p3, p2}, Lcom/applovin/impl/p0$c;->a(Lcom/applovin/impl/p0$b;)V

    return-void

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-static {v0}, Lcom/applovin/impl/v0;->a(Lcom/applovin/impl/sdk/k;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/u0;->c:Ljava/util/List;

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/u0;->d:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/applovin/impl/u0;->f:Lcom/applovin/impl/p0$c;

    .line 19
    invoke-direct {p0, p1}, Lcom/applovin/impl/u0;->a(I)Lcom/applovin/impl/q0;

    move-result-object p1

    .line 20
    iget-object p3, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/applovin/impl/u0;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting consent flow with states: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/u0;->c:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nInitial state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_3
    invoke-static {p2}, Lcom/applovin/impl/sdk/k;->a(Landroid/content/Context;)Lcom/applovin/impl/c;

    move-result-object p3

    iget-object v0, p0, Lcom/applovin/impl/u0;->j:Lcom/applovin/impl/b;

    invoke-virtual {p3, v0}, Lcom/applovin/impl/c;->a(Lcom/applovin/impl/b;)V

    const/4 p3, 0x0

    .line 22
    invoke-direct {p0, p3, p1, p2}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/q0;Lcom/applovin/impl/q0;Landroid/app/Activity;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/applovin/impl/p0$c;)V
    .locals 1

    .line 9
    sget-object v0, Lcom/applovin/impl/q0$a;->c:Lcom/applovin/impl/q0$a;

    invoke-virtual {v0}, Lcom/applovin/impl/q0$a;->b()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/applovin/impl/u0;->a(ILandroid/app/Activity;Lcom/applovin/impl/p0$c;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/applovin/impl/u0;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
