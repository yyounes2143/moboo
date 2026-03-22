.class public final Lj$/util/stream/t;
.super Lj$/util/stream/f0;
.source "SourceFile"


# instance fields
.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/a;II)V
    .locals 0

    iput p3, p0, Lj$/util/stream/t;->n:I

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/f0;-><init>(Lj$/util/stream/a;II)V

    return-void
.end method


# virtual methods
.method public final N(ILj$/util/stream/i2;)Lj$/util/stream/i2;
    .locals 1

    iget p1, p0, Lj$/util/stream/t;->n:I

    packed-switch p1, :pswitch_data_0

    .line 342
    new-instance p1, Lj$/util/stream/a0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/a0;-><init>(Lj$/util/stream/a;Lj$/util/stream/i2;I)V

    return-object p1

    :pswitch_0
    return-object p2

    .line 225
    :pswitch_1
    new-instance p1, Lj$/util/stream/a0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/a0;-><init>(Lj$/util/stream/a;Lj$/util/stream/i2;I)V

    return-object p1

    .line 266
    :pswitch_2
    new-instance p1, Lj$/util/stream/Q;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/Q;-><init>(Lj$/util/stream/a;Lj$/util/stream/i2;I)V

    return-object p1

    .line 206
    :pswitch_3
    new-instance p1, Lj$/util/stream/T;

    const/4 v0, 0x0

    .line 206
    invoke-direct {p1, v0, p2}, Lj$/util/stream/T;-><init>(ILj$/util/stream/i2;)V

    return-object p1

    .line 249
    :pswitch_4
    new-instance p1, Lj$/util/stream/p;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/p;-><init>(Lj$/util/stream/a;Lj$/util/stream/i2;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
