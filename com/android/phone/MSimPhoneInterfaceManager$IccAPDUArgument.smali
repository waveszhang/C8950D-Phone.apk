.class final Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;
.super Ljava/lang/Object;
.source "MSimPhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimPhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IccAPDUArgument"
.end annotation


# instance fields
.field public channel:I

.field public cla:I

.field public command:I

.field public data:Ljava/lang/String;

.field public p1:I

.field public p2:I

.field public p3:I


# direct methods
.method public constructor <init>(IIIIIILjava/lang/String;)V
    .registers 8
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p3, p0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->channel:I

    .line 125
    iput p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->cla:I

    .line 126
    iput p2, p0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->command:I

    .line 127
    iput p4, p0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->p1:I

    .line 128
    iput p5, p0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->p2:I

    .line 129
    iput p6, p0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->p3:I

    .line 130
    iput-object p7, p0, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    .line 131
    return-void
.end method
