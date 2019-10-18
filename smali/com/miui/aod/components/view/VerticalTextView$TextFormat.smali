.class public Lcom/miui/aod/components/view/VerticalTextView$TextFormat;
.super Ljava/lang/Object;
.source "VerticalTextView.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/components/view/VerticalTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/aod/components/view/VerticalTextView$TextFormat;",
        ">;"
    }
.end annotation


# instance fields
.field public lineCount:I

.field public lineEnds:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/aod/components/view/VerticalTextView$TextFormat;)I
    .locals 6

    iget v0, p0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineCount:I

    iget v1, p1, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineCount:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineCount:I

    iget v1, p1, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineCount:I

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v4, p0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineEnds:[I

    array-length v4, v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineEnds:[I

    aget v4, v4, v1

    iget-object v5, p1, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineEnds:[I

    aget v5, v5, v1

    if-ge v4, v5, :cond_2

    return v3

    :cond_2
    iget-object v4, p0, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineEnds:[I

    aget v4, v4, v1

    iget-object v5, p1, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineEnds:[I

    aget v5, v5, v1

    if-le v4, v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->compareTo(Lcom/miui/aod/components/view/VerticalTextView$TextFormat;)I

    move-result p0

    return p0
.end method
