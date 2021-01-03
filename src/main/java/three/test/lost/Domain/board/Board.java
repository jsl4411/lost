package three.test.lost.Domain.board;

import three.test.lost.Domain.comment.Comment;
import three.test.lost.Domain.user.User;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@NoArgsConstructor
@Data
@Entity
@Table(name = "board")
public class Board {
    @Id
    @GeneratedValue
    @Column(name = "boardSeq", nullable = false)
    private Long boardSeq;

    @ManyToOne(targetEntity = User.class)
    @JoinColumn(name = "userid", nullable = false)
    private User user;

    @Column(name = "boardSub",length = 200, nullable = false)
    private String boardSub;

    @Column(name = "content",length = 1000,nullable = false)
    private String content;

    @Column(name = "ano")
    private Long ano;

    @Column(name = "boardGroup", nullable = false)
    private String boardGroup;

    @Temporal(TemporalType.DATE)
    Date date;

    @Column(name = "place",length = 50)
    private String place;

    @Column(name = "category")
    private String category;

    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "seq")
    List<Comment> comments = new ArrayList<Comment>();

}
