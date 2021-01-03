package three.test.lost.Domain.comment;

import three.test.lost.Domain.board.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping(value = "comment/api/")
public class CommentApiController {
    @Autowired CommentService commentService;
    @Autowired
    BoardService boardService;

    @RequestMapping(value = "/{boardSeq}", method = RequestMethod.GET)
    public List<Comment> findAll(@PathVariable ("boardSeq") Long boardSeq){

        return commentService.findBySeq(boardSeq);
    }
    @PostMapping(value = "/write")
    public String write(@RequestBody Comment comment, HttpServletRequest request){

        String userid = (String) request.getSession().getAttribute("loginUser");

        System.out.println("@@@@@@"+comment.getSeq());
    return commentService.write(comment, userid);
    }
    @GetMapping (value = "/delete/{commentSeq}")
    public String delete(@PathVariable("commentSeq") Long commentSeq){


        return commentService.delete(commentSeq);
    }
    @GetMapping(value = "/edit/{commentSeq}")
    public String edit(@PathVariable("commentSeq") Long commentSeq){
        Comment comment1 = new Comment();



        return commentService.edit(comment1);

    }
}
