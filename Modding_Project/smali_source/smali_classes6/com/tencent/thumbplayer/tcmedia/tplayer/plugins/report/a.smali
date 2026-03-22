.class public Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/a;


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
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(IIILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    const-string p3, "TPLogPlugin"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    const-string p1, "on reset"

    :goto_0
    invoke-static {p3, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "on release"

    goto :goto_0

    :pswitch_3
    const-string p1, "on play complete"

    goto :goto_0

    :pswitch_4
    const-string p1, "seek complete"

    goto :goto_0

    :pswitch_5
    const-string p1, "start seek"

    goto :goto_0

    :pswitch_6
    const-string p1, "on error:"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_7
    const-string p1, "on stoped"

    goto :goto_0

    :pswitch_8
    const-string p1, "on paused"

    goto :goto_0

    :pswitch_9
    const-string p1, "start play"

    goto :goto_0

    :pswitch_a
    const-string p1, "on prepared"

    goto :goto_0

    :pswitch_b
    const-string p1, "start prepare"

    goto :goto_0

    :pswitch_c
    const-string p1, "create player adapter"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method
